import 'dart:typed_data';

import 'package:ORBmobile/api/main.dart';
import 'package:ORBmobile/crypto/main.dart';
import 'package:fixnum/fixnum.dart';

Future<bool> userSell(Uint8List adress, int recieve, int offer) async {
  var pubBytes = await Crypter.adressBytes();
  var recieveInt64 = Int64(recieve);
  var offerInt64 = Int64(offer);
  var response = await userStub.sell(
    UserRequests_Trade(
      publicKey: pubBytes,
      adress: adress,
      recieve: recieveInt64,
      offer: offerInt64,
      sign: await Crypter.sign(
        Uint8List.fromList(
          pubBytes + adress + recieveInt64.toBytes() + offerInt64.toBytes(),
        ),
      ),
    ),
  );
  return response.passed;
}
