import '../api/main.dart';
import 'dart:typed_data';
import 'info_user.dart';

class UserInfoStream {
  Stream<UserInfo> stream;
  Function cancel;
  UserInfoStream({
    required this.stream,
    required this.cancel,
  });
}

Future<UserInfoStream> userSubscribe(Uint8List adress) async {
  var grpcStream = infoStub.userSubscribe(
    InfIn_Adress(adress: adress),
  );
  var dartStream = grpcStream.map(
    (response) => UserInfo.fromResponse(response: response),
  );
  var userInfoStream = UserInfoStream(
    stream: dartStream,
    cancel: grpcStream.cancel,
  );
  return userInfoStream;
}
