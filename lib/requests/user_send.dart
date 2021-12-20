import 'dart:typed_data';

import 'package:ORBmobile/api/main.dart';
import 'package:ORBmobile/crypto/main.dart';
import 'package:fixnum/fixnum.dart';

Future<bool> userSend(Uint8List adress, int amount) async {
  var pubBytes = await Crypter.peronalKeyBytes();
  var amountBytes = Int64(amount).toBytes();
  var response = await userStub.send(
    UserRequests_Send(
      publicKey: pubBytes,
      sendAmount: Int64(amount),
      recieverAdress: adress,
      sign: await Crypter.sign(
        Uint8List.fromList(
          pubBytes + amountBytes + adress,
        ),
      ),
    ),
  );
  return response.passed;
}
