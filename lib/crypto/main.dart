import 'dart:typed_data';
import 'dart:math';

import 'package:flutter/foundation.dart';
import 'package:pointycastle/key_generators/rsa_key_generator.dart';
import 'package:pointycastle/pointycastle.dart';
import 'package:basic_utils/basic_utils.dart';
import 'package:pointycastle/random/fortuna_random.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'dart:convert';

/// ### Crypter (static class)
/// -----
/// This is static class that contains only links to crytography
/// functions functions that can be used in the app.
/// Functions Might throw an error, in case keys haven't being saved.
/// -----
/// Available functions:
/// - adressBytes
/// - adressBase64
/// - decrypt
/// - encrypt
/// - export
/// - import
/// - generate
/// - sign
class Crypter {
  /// Get personal adress in form of `Uint8List`.
  static Future<String> adressBase64() async {
    var bytes = await adressBytes();
    return base64Encode(bytes);
  }

  /// Get personal adress in form of `String` base64.
  static Future<Uint8List> adressBytes() async {
    var prefs = await SharedPreferences.getInstance();
    var key = prefs.getString('persPub') ?? 'error';
    var keyBytes = CryptoUtils.getBytesFromPEMString(key);
    return Digest('SHA-512').process(keyBytes);
  }

  /// Decrypt encrypted message.
  static Future<String> decrypt(String message) async {
    var prefs = await SharedPreferences.getInstance();
    var mesPublic = prefs.getString('mesPriv') ?? 'error';
    if (mesPublic == 'error') {
      throw Exception(
        'this method should not be called if key is not saved',
      );
    }
    var key = CryptoUtils.rsaPrivateKeyFromPem(mesPublic);
    var decrypted = CryptoUtils.rsaDecrypt(message, key);
    return decrypted;
  }

  /// Encrypted message.
  static Future<String> encrypt(String message) async {
    var prefs = await SharedPreferences.getInstance();
    var mesPublic = prefs.getString('mesPub') ?? 'error';
    if (mesPublic == 'error') {
      throw Exception(
        'this method should not be called if key is not saved',
      );
    }
    var key = CryptoUtils.rsaPublicKeyFromPem(mesPublic);
    var encrypted = CryptoUtils.rsaEncrypt(message, key);
    return encrypted;
  }

  /// Export keys as a single `String`.
  static Future<String> export() async {
    var prefs = await SharedPreferences.getInstance();
    var persPriv = prefs.getString('persPriv') ?? 'error';
    var persPub = prefs.getString('persPub') ?? 'error';
    var mesPriv = prefs.getString('mesPriv') ?? 'error';
    var mesPub = prefs.getString('mesPub') ?? 'error';
    List<String> keysStrings = [
      persPriv,
      persPub,
      mesPriv,
      mesPub,
    ];
    if (keysStrings.contains('error')) {
      throw Exception(
        'this function should not be called if keys are not generated',
      );
    }
    return keysStrings.join("|");
  }

  /// Import and save keys from a single `String`.
  static Future<bool> import(String keys) async {
    var keysListToCheck = keys.split('|');
    if (keysListToCheck.length != 4) {
      return false;
    }
    for (int i = 0; i < keysListToCheck.length; i++) {
      var keyCheckedSuccessfully = await _checkKeyString(keysListToCheck[i]);
      if (!keyCheckedSuccessfully) {
        return false;
      }
    }
    var prefs = await SharedPreferences.getInstance();
    prefs.setString('persPriv', keysListToCheck[0]);
    prefs.setString('persPub', keysListToCheck[1]);
    prefs.setString('mesPriv', keysListToCheck[2]);
    prefs.setString('mesPub', keysListToCheck[3]);
    return true;
  }

  static Future<bool> _checkKeyString(String key) async {
    try {
      CryptoUtils.getBytesFromPEMString(key);
      return true;
    } catch (_) {
      return false;
    }
  }

  /// Generate new pack of keys.
  void generateKeys() async {
    var firstPair = await compute(_generateSingleKeyPair, 3976);
    var secondPair = await compute(_generateSingleKeyPair, 2149);
    var prefs = await SharedPreferences.getInstance();
    prefs.setString("persPriv", firstPair[0]);
    prefs.setString("persPub", firstPair[1]);
    prefs.setString("mesPriv", secondPair[0]);
    prefs.setString("mesPub", secondPair[1]);
  }

  static List<String> _generateSingleKeyPair(int bitLength) {
    final secureRandom = FortunaRandom();
    final seedSource = Random.secure();
    final seeds = <int>[];
    for (var i = 0; i < 32; i++) {
      seeds.add(seedSource.nextInt(255));
    }
    secureRandom.seed(KeyParameter(Uint8List.fromList(seeds)));
    final keyGen = RSAKeyGenerator()
      ..init(
        ParametersWithRandom(
          RSAKeyGeneratorParameters(
            BigInt.parse('65537'),
            bitLength,
            64,
          ),
          secureRandom,
        ),
      );
    final pair = keyGen.generateKeyPair();
    final myPublic = pair.publicKey as RSAPublicKey;
    final myPrivate = pair.privateKey as RSAPrivateKey;
    return [
      CryptoUtils.encodeRSAPrivateKeyToPemPkcs1(myPrivate),
      CryptoUtils.encodeRSAPublicKeyToPemPkcs1(myPublic),
    ];
  }

  /// Sign data using personal private key.
  static Future<Uint8List> sign(Uint8List data) async {
    var prefs = await SharedPreferences.getInstance();
    var keyPem = prefs.getString('persPriv') ?? 'error';
    var key = CryptoUtils.rsaPrivateKeyFromPemPkcs1(keyPem);
    var sign = CryptoUtils.rsaSign(key, data, algorithmName: 'SHA-512/RSA');
    return sign;
  }
}
