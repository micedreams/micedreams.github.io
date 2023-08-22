import 'package:flutter/material.dart';

import 'portfolio.dart';

void main() {
  runApp(const Main());
}

class Main extends StatelessWidget {
  const Main({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        brightness: Brightness.dark,
        fontFamily: 'Athiti',
      ),
      home: const Portfolio(),
    );
  }
}
