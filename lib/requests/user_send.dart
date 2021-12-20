import 'dart:typed_data';

import 'package:ORBmobile/api/main.dart';
import 'package:ORBmobile/crypto/main.dart';
import 'package:fixnum/fixnum.dart';

Future<bool> userSend(Uint8List adress, int amount) async {
  var pubBytes = await Crypter.peronalKeyBytes();
  var amountInt64 = Int64(amount);
  var response = await userStub.send(
    UserRequests_Send(
      publicKey: pubBytes,
      sendAmount: amountInt64,
      recieverAdress: adress,
      sign: await Crypter.sign(
        Uint8List.fromList(
          pubBytes + amountInt64.toBytes() + adress,
        ),
      ),
    ),
  );
  return response.passed;
}
