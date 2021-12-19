import 'dart:typed_data';

import 'package:basic_utils/basic_utils.dart';
import 'package:shared_preferences/shared_preferences.dart';

void keyCheck(String? key) {
  if (key == null) {
    throw Exception("key not saved error");
  }
}

Future<Uint8List> getKeyBytes(String key) async {
  var prefs = await SharedPreferences.getInstance();
  var keyPem = prefs.getString(key)!;
  keyCheck(keyPem);
  return CryptoUtils.getBytesFromPEMString(keyPem);
}
