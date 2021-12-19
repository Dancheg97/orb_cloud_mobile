import 'dart:typed_data';

import 'package:basic_utils/basic_utils.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'dart:convert';

Future<String> getAdressBase64() async {
  var bytes = await getAdressBytes();
  return base64Encode(bytes);
}

Future<Uint8List> getAdressBytes() async {
  var prefs = await SharedPreferences.getInstance();
  var key = prefs.getString('persPub') ?? 'error';
  var keyBytes = CryptoUtils.getBytesFromPEMString(key);
  return Digest('SHA-512').process(keyBytes);
}
