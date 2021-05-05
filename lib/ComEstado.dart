import 'package:flutter/material.dart';

import 'Tema.dart';

int cont = 0;

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
        actions: [
          MeuSwitcher(),
        ],
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Text('Contador: $cont'),
          MeuSwitcher(),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 25,
                height: 25,
                color: Colors.deepPurple,
              ),
              Container(
                width: 25,
                height: 25,
                color: Colors.deepOrange,
              ),
              Container(
                width: 25,
                height: 25,
                color: Colors.pinkAccent,
              ),
            ],
          )
        ]),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          setState(() {
            cont++;
          });
        },
      ),
    );
  }
}

class MeuSwitcher extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Switch(
      value: Tema.instance.isThemeDark,
      onChanged: (value) {
        Tema.instance.changeTheme();
        cont--;
      },
    );
  }
}
