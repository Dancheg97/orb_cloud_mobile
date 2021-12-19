import '../api/main.dart';
import 'dart:typed_data';

class UserInfoStream {
  Stream<List<String>> stream;
  Function cancel;
  UserInfoStream({
    required this.stream,
    required this.cancel,
  });
}

UserInfoStream infoUserSubscribe(
  Uint8List marketAdress,
  Uint8List userAdress,
) {
  var grpcStream = infoStub.messagesSubscribe(
    InfIn_UserMarketAdr(
      marketAdress: marketAdress,
      userAdress: userAdress,
    ),
  );
  var dartStream = grpcStream.map((response) => response.messages);
  var userInfoStream = UserInfoStream(
    stream: dartStream,
    cancel: grpcStream.cancel,
  );
  return userInfoStream;
}
