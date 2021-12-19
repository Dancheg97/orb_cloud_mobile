import 'dart:typed_data';
import 'package:basic_utils/basic_utils.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future<Uint8List> signBytes(Uint8List data) async {
  var prefs = await SharedPreferences.getInstance();
  var keyPem = prefs.getString('persPriv') ?? 'error';
  var key = CryptoUtils.rsaPrivateKeyFromPemPkcs1(keyPem);
  var sign = CryptoUtils.rsaSign(key, data, algorithmName: 'SHA-512/RSA');
  return sign;
}
