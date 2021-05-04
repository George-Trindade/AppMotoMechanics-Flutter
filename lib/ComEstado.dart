import 'package:flutter/material.dart';

import 'Tema.dart';

class ComEstado extends StatefulWidget {
  @override
  State<ComEstado> createState() {
    return Estado();
  }
}

class Estado extends State<ComEstado> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Page 02"),
      ),
      body: Center(
        child: Switch(
            value: Tema.instance.isThemeDark,
            onChanged: (value) {
              Tema.instance.changeTheme();
            }),
      ),
    );
  }
}
