import 'package:flutter/material.dart';
import 'ComEstado.dart';

class SemEstado extends StatelessWidget {
  final String title;
  const SemEstado({Key key, this.title}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ComEstado(),
      theme: ThemeData(
        primaryColor: Colors.pink.shade400,
      ),
    );
  }
}
