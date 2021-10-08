import 'package:flutter/material.dart';
import 'package:foods_app/fooderlich_theme.dart';
import 'package:foods_app/home.dart';

void main() {
  runApp(const Foods());
}

class Foods extends StatelessWidget {
  const Foods({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = FooderlichTheme.light();

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: theme,
      title: 'Foods',
      home: const Home(),
    );
  }
}
