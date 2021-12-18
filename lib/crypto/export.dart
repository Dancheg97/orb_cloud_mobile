import 'package:shared_preferences/shared_preferences.dart';

Future<String> exportKeys() async {
  var prefs = await SharedPreferences.getInstance();
  var persPriv = prefs.getString('persPriv') ?? 'error';
  var persPub = prefs.getString('persPub') ?? 'error';
  var mesPriv = prefs.getString('mesPriv') ?? 'error';
  var mesPub = prefs.getString('mesPub') ?? 'error';
  List<String> keysStrings = [
    persPriv,
    persPub,
    mesPriv,
    mesPub,
  ];
  if (keysStrings.contains('error')) {
    throw Exception(
      'this function should not be called if keys are not generated',
    );
  }
  return keysStrings.join("|");
}
