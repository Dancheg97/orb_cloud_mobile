import 'dart:typed_data';

import 'package:ORBmobile/crypto/keys.dart';

import 'crypt.dart';
import 'keygen.dart';
import 'sign.dart';
import 'adress.dart';
import 'port.dart';

/// ### Crypter (static class)
/// -----
/// This is static class that contains only links to crytography
/// functions functions that can be used in the app.
/// Functions might throw an error, in case keys haven't being saved.
/// -----
/// Function description is available on call.
class Crypter {
  /// Get personal adress in form of `Uint8List`.
  static Future<String> adressBase64() {
    return getAdressBase64();
  }

  /// Get personal adress in form of `String` base64.
  static Future<Uint8List> adressBytes() {
    return getAdressBytes();
  }

  /// Decrypt encrypted message.
  static Future<String> encrypt(String message) {
    return encryptString(message);
  }

  /// Encrypted message.
  static Future<String> decrypt(String message) {
    return decryptString(message);
  }

  /// Export keys as a single `String`.
  static Future<String> export() {
    return exportKeys();
  }

  /// Import and save keys from a single `String`.
  static Future<bool> import(String keys) {
    return importKeys(keys);
  }

  /// Generate new pack of keys.
  void generateKeys() {
    generate();
  }

  /// Sign data using personal private key.
  static Future<Uint8List> sign(Uint8List bytes) {
    return signBytes(bytes);
  }

  /// Get personal public key bytes
  static Future<Uint8List> peronalKeyBytes() {
    return getKeyBytes('personalPublicKey');
  }

  /// Get message public key bytes
  static Future<Uint8List> messageKeyBytes() {
    return getKeyBytes('messagePublicKey');
  }
}
