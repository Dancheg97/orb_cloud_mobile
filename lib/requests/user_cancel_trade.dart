import 'dart:typed_data';

import 'package:ORBmobile/api/main.dart';
import 'package:ORBmobile/crypto/main.dart';

Future<bool> userCancelTrade(Uint8List adress) async {
  var pubBytes = await Crypter.adressBytes();
  var response = await userStub.cancelTrade(
    UserRequests_CancelTrade(
      publicKey: pubBytes,
      marketAdress: adress,
      sign: await Crypter.sign(
        Uint8List.fromList(pubBytes + adress),
      ),
    ),
  );
  return response.passed;
}
