import 'dart:typed_data';
import 'package:ORBmobile/crypto/main.dart';

import '../api/main.dart';

Future<List<String>> infoMessages(Uint8List marketAdress) async {
  var response = await infoStub.messages(
    InfIn_UserMarketAdr(
      marketAdress: marketAdress,
      userAdress: await Crypter.adressBytes(),
    ),
  );
  return response.messages;
}
