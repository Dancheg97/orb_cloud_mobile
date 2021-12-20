import 'dart:typed_data';

import 'package:ORBmobile/api/main.dart';
import 'package:ORBmobile/crypto/main.dart';

Future<bool> userBuy(Uint8List adress, String message) async {
  var pubBytes = await Crypter.peronalKeyBytes();
  var cipherMessage = await Crypter.encrypt(message);
  var response = await userStub.message(
    UserRequests_Message(
      publicKey: pubBytes,
      adress: adress,
      message: cipherMessage,
      sign: await Crypter.sign(
        Uint8List.fromList(
          pubBytes + cipherMessage.codeUnits + adress,
        ),
      ),
    ),
  );
  return response.passed;
}
