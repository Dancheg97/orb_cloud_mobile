import 'package:basic_utils/basic_utils.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future<String> decrypt(String message) async {
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
