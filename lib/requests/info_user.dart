import '../api/main.dart';
import 'dart:typed_data';

class UserInfo {
  String publicName;
  int balance;
  Uint8List messageKey;
  List<Uint8List> marketAdresses;
  List<int> marketBalances;
  UserInfo({
    required this.publicName,
    required this.balance,
    required this.messageKey,
    required this.marketAdresses,
    required this.marketBalances,
  });
}

Future<UserInfo> user(Uint8List adress) async {
  var resp = await infoStub.user(
    InfIn_Adress(adress: adress),
  );
  return UserInfo(
    publicName: resp.publicName,
    balance: resp.balance.toInt(),
    messageKey: Uint8List.fromList(resp.messageKey),
    marketAdresses: resp.marketAdresses.map(Uint8List.fromList).toList(),
    marketBalances: resp.marketBalances.map((val) => val.toInt()).toList(),
  );
}
