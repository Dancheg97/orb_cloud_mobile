import 'dart:typed_data';
import '../api/main.dart';

Future<List<String>> infoMessages(
  Uint8List marketAdress,
  Uint8List userAdress,
) async {
  var response = await infoStub.messages(
    InfIn_UserMarketAdr(
      marketAdress: marketAdress,
      userAdress: userAdress,
    ),
  );
  return response.messages;
}
