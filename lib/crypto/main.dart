import 'dart:typed_data';
import 'dart:math';

import 'package:ORBmobile/crypto/crypt.dart';
import 'package:flutter/foundation.dart';
import 'package:pointycastle/key_generators/rsa_key_generator.dart';
import 'package:pointycastle/pointycastle.dart';
import 'package:basic_utils/basic_utils.dart';
import 'package:pointycastle/random/fortuna_random.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'adress.dart';
import 'crypt.dart';
import 'port.dart';

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
  static Future<String> Function() adressBase64 = getAdressBase64;

  /// Get personal adress in form of `String` base64.
  static Future<Uint8List> Function() adressBytes = getAdressBytes;

  /// Decrypt encrypted message.
  static Future<String> Function(String) encrypt = encryptString;

  /// Encrypted message.
  static Future<String> Function(String) decrypt = decryptString;

  /// Export keys as a single `String`.
  static Future<String> Function() export = exportKeys;

  /// Import and save keys from a single `String`.
  static Future<bool> Function(String) import = importKeys;

  /// Generate new pack of keys.
  

  /// Sign data using personal private key.
  static Future<Uint8List> sign(Uint8List data) async {
    var prefs = await SharedPreferences.getInstance();
    var keyPem = prefs.getString('persPriv') ?? 'error';
    var key = CryptoUtils.rsaPrivateKeyFromPemPkcs1(keyPem);
    var sign = CryptoUtils.rsaSign(key, data, algorithmName: 'SHA-512/RSA');
    return sign;
  }
}
