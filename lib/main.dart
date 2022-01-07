import 'package:flutter/material.dart';

import 'package:flutter_alphabet/box.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Aphabet',
      home: MyBox(),
    );
  }
}
