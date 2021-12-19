import '../api/main.dart';
import 'dart:typed_data';

class UserInfo {
  late final String publicName;
  late final int balance;
  late final Uint8List messageKey;
  late final List<Uint8List> marketAdresses;
  late final List<int> marketBalances;
  UserInfo.fromResponse({required InfOut_User response}) {
    publicName = response.publicName;
    balance = response.balance.toInt();
    messageKey = Uint8List.fromList(response.messageKey);
    marketAdresses = response.marketAdresses.map(Uint8List.fromList).toList();
    marketBalances = response.marketBalances.map((val) => val.toInt()).toList();
  }
}

Future<UserInfo> user(Uint8List adress) async {
  var response = await infoStub.user(
    InfIn_Adress(adress: adress),
  );
  return UserInfo.fromResponse(response: response);
}
