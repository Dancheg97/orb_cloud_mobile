import 'package:basic_utils/basic_utils.dart';

Future<bool> importKeys(String keys) async {
  var keysListToCheck = keys.split('|');
  if (keysListToCheck.length != 4) {
    return false;
  }
  for (int i = 0; i < keysListToCheck.length; i++) {
    var keyCheckedSuccessfully = await _checkKeyString(keysListToCheck[i]);
    if (!keyCheckedSuccessfully) {
      return false;
    }
  }
  return true;
}

Future<bool> _checkKeyString(String key) async {
  try {
    CryptoUtils.getBytesFromPEMString(key);
    return true;
  } catch (_) {
    return false;
  }
}
