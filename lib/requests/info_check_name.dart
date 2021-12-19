import 'package:ORBmobile/api/main.dart';

Future<bool> infoCheckName(String name) async {
  var response = await infoStub.checkName(
    InfIn_Text(text: name),
  );
  return response.value;
}
