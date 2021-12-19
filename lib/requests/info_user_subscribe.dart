import '../api/main.dart';
import 'dart:typed_data';
import 'info_user.dart';

class UserInfoStream {
  Stream<UserInfo> stream;
  Function canceler;
  UserInfoStream({
    required this.stream,
    required this.canceler,
  });
}

Future<UserInfoStream> userSubscribe(Uint8List adress) async {
  var grpcStream = infoStub.userSubscribe(
    InfIn_Adress(adress: adress),
  );
  var dartStream = grpcStream.map(
    (resp) => UserInfo(
      publicName: resp.publicName,
      balance: resp.balance.toInt(),
      messageKey: Uint8List.fromList(resp.messageKey),
      marketAdresses: resp.marketAdresses.map(Uint8List.fromList).toList(),
      marketBalances: resp.marketBalances.map((v) => v.toInt()).toList(),
    ),
  );
  var userInfoStream = UserInfoStream(
    stream: dartStream,
    canceler: grpcStream.cancel,
  );
  return userInfoStream;
}
