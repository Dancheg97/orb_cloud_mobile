import '../crypto/main.dart';
import '../api/main.dart';
import 'dart:typed_data';

Future<bool> infoHasTrades(Uint8List marketAdress) async {
  var response = await infoStub.hasTrades(
    InfIn_UserMarketAdr(
      userAdress: await Crypter.adressBytes(),
      marketAdress: marketAdress,
    ),
  );
  return response.value;
}
