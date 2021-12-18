import 'dart:typed_data';

import 'adress.dart';
import 'decrypt.dart';
import 'encrypt.dart';
import 'export.dart';
import 'import.dart';
import 'generate.dart';
import 'sign.dart';

/// ### Crypter (static class)
/// ---
/// This is static class that contains only links to crytography
/// functions functions that can be used in the app.
/// Functions Might throw an error, in case keys haven't being saved.
/// ---
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
  static Future<Uint8List> Function() adressBytes = getAdressBytes;

  /// Get personal adress in form of `String` base64.
  static Future<String> Function() adressBase64 = getAdressBase64;

  /// Decrypt encrypted message.
  static Future<String> Function(String) decrypt = decryptMes;

  /// Encrypted message.
  static Future<String> Function(String) ecnrypt = encryptMes;

  /// Export keys as a single `String`.
  static Future<String> Function() export = exportKeys;

  /// Import and save keys from a single `String`.
  static Future<bool> Function(String) import = importKeys;

  /// Generate new pack of keys.
  static Function() generate = generateKeys;

  /// Sign data using personal private key.
  static Future<Uint8List> Function(Uint8List) sign = signBytes;
}
