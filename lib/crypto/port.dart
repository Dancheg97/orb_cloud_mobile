import 'package:ORBmobile/crypto/keys.dart';
import 'package:basic_utils/basic_utils.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future<String> exportKeys() async {
  var prefs = await SharedPreferences.getInstance();
  var persPriv = prefs.getString('personalPrivateKey')!;
  var persPub = prefs.getString('personalPublicKey')!;
  var mesPriv = prefs.getString('messagePrivateKey')!;
  var mesPub = prefs.getString('messagePublicKey')!;
  List<String?> keysStrings = [
    persPriv,
    persPub,
    mesPriv,
    mesPub,
  ];
  for (var key in keysStrings) {
    keyCheck(key);
  }
  return keysStrings.join("|");
}

Future<bool> importKeys(String keys) async {
  var keysListToCheck = keys.split('|');
  if (keysListToCheck.length != 4) {
    return false;
  }
  for (int i = 0; i < keysListToCheck.length; i++) {
    var keyCheckedSuccessfully = await _checkKeyStringToBeValid(
      keysListToCheck[i],
    );
    if (!keyCheckedSuccessfully) {
      return false;
    }
  }
  var prefs = await SharedPreferences.getInstance();
  prefs.setString('personalPrivateKey', keysListToCheck[0]);
  prefs.setString('personalPublicKey', keysListToCheck[1]);
  prefs.setString('messagePrivateKey', keysListToCheck[2]);
  prefs.setString('messagePublicKey', keysListToCheck[3]);
  return true;
}

Future<bool> _checkKeyStringToBeValid(String key) async {
  try {
    CryptoUtils.getBytesFromPEMString(key);
    return true;
  } catch (_) {
    return false;
  }
}
