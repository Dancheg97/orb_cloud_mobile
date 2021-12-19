import 'dart:typed_data';

import 'package:ORBmobile/api/main.dart';
import 'package:ORBmobile/crypto/main.dart';

Future<bool> userCreate(String name) async {
  var pubBytes = await Crypter.peronalKeyBytes();
  var mesBytes = await Crypter.messageKeyBytes();
  var nameBytes = name.codeUnits;
  var response = await userStub.create(UserRequests_Create(
    publicKey: pubBytes,
    messsageKey: mesBytes,
    publicName: name,
    sign: await Crypter.sign(Uint8List.fromList(
      pubBytes + mesBytes + nameBytes,
    )),
  ));
  return response.passed;
}
