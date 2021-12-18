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
  static Future<Uint8List> Function() adressBytes = getAdressBytes;
  static Future<String> Function() adressBase64 = getAdressBase64;
  static Future<String> Function(String) decrypt = decryptMes;
  static Future<String> Function(String) ecnrypt = encryptMes;
  static Future<String> Function() export = exportKeys;
  static Future<bool> Function(String) import = importKeys;
  static Function() generate = generateKeys;
  static Future<Uint8List> Function(Uint8List) sign = signBytes;
}
