import 'package:ORBmobile/api/main.dart';

Future<List<String>> infoNetMembers() async {
  var response = await infoStub.netMembers(
    InfIn_Empty(),
  );
  return response.adresses;
}
