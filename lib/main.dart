import 'package:flutter/material.dart';
import 'theme/theme.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: appTheme,
      home: const Center(
        child: Text('sss'),
      ),
    );
  }
}
