import 'package:ORBmobile/intro/intro.dart';
import 'package:ORBmobile/language/language.dart';
import 'package:flutter/material.dart';
import 'theme/theme.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) => MaterialApp(
        theme: appTheme,
        home: Center(),
      );
}
