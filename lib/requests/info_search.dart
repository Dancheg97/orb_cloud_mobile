import '../api/main.dart';
import 'dart:typed_data';

Future<List<Uint8List>> infoSearch(String input) async {
  var response = await infoStub.search(
    InfIn_Text(text: input),
  );
  return response.marketAdresses.map((e) => Uint8List.fromList(e)).toList();
}
