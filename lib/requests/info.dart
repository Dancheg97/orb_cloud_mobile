import 'package:ORBmobile/crypto/main.dart';
import '../api/main.dart';
import 'dart:typed_data';

/// ### InfoRequests (static class)
/// ---
/// This class operates grpc calls to network.
/// Request description can be found in `api.proto` file.
/// 
/// Possible requests:
/// - hasTrades
/// 
class InfoRequests {
  static Future<bool> hasTrades(Uint8List marketAdress) async {
    var response = await infoStub.hasTrades(
      InfIn_UserMarketAdr(
        userAdress: await Crypter.adressBytes(),
        marketAdress: marketAdress,
      ),
    );
    return response.value;
  }
}
