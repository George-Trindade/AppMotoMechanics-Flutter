import 'package:app01/AgendamentoPage.dart';
import 'package:app01/CadastroPage.dart';
import 'package:app01/IndexPage.dart';
import 'package:app01/ListAgendaPage.dart';
import 'package:app01/ListOrcamentoPage.dart';
//import 'package:app01/ComEstado.dart';
import 'package:app01/LoginScreen.dart';
import 'package:app01/OrcamentoPage.dart';
import 'package:app01/ServicosPage.dart';
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
            initialRoute: '/home',
            routes: {
              '/home': (context) => LoginScreen(),
              '/index': (context) => IndexPage(),
              '/listagenda': (context) => ListAgenda(),
              '/agenda': (context) => AgendamentoPage(),
              '/listorcamento': (context) => ListOrcamento(),
              '/orcamento': (context) => OrcamentoPage(),
              '/servicos': (context) => ServicosPage(),
            },
          );
        });
  }
}
