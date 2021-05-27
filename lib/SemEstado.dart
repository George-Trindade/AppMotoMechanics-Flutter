import 'package:app01/CadastroPage.dart';
import 'package:app01/ComEstado.dart';
import 'package:flutter/material.dart';
import 'Tema.dart';

class SemEstado extends StatelessWidget {
  final String title;
  const SemEstado({Key key, this.title}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: Tema.instance,
        builder: (context, child) {
          return MaterialApp(
            //home: CadastroPage(),
            theme: ThemeData(
              brightness: Tema.instance.isThemeDark
                  ? Brightness.dark
                  : Brightness.light,
            ),
            initialRoute: '/',
            routes: {
              '/home': (context) => ComEstado(),
              '/': (context) => CadastroPage(),
            },
          );
        });
  }
}
