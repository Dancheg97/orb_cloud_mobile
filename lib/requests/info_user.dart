import '../api/main.dart';
import 'dart:typed_data';

class UserInfo {
  String publicName;
  double balance;
  Uint8List messageKey;
  List<Uint8List> marketAdresses;
  List<double> marketBalances;
  UserInfo({
    required this.publicName,
    required this.balance,
    required this.messageKey,
    required this.marketAdresses,
    required this.marketBalances,
  });
}

UserInfo transformUserInfo(InfOut_User response) {
  return UserInfo(
    publicName: response.publicName,
    balance: response.balance,
    messageKey: Uint8List.fromList(response.messageKey),
    marketAdresses: response.marketAdresses.map(Uint8List.fromList).toList(),
    marketBalances: response.marketBalances.map((val) => val).toList(),
  );
}

Future<UserInfo> user(Uint8List adress) async {
  var response = await infoStub.user(
    InfIn_Adress(adress: adress),
  );
  return transformUserInfo(response);
}
