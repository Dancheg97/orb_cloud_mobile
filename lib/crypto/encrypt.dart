import 'package:basic_utils/basic_utils.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future<String> encryptMes(String message) async {
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
