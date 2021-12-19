import 'dart:typed_data';

import 'crypt.dart';
import 'keygen.dart';
import 'sign.dart';
import 'adress.dart';
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
/// - export keys
/// - import keys
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
  void generateKeys = generate;

  /// Sign data using personal private key.
  static Future<Uint8List> Function(Uint8List) sign = signBytes;
}
