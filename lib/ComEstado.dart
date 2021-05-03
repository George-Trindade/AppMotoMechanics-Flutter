import 'package:flutter/material.dart';

class ComEstado extends StatefulWidget {
  @override
  State<ComEstado> createState() {
    return Estado();
  }
}

class Estado extends State<ComEstado> {
  get floatingActionButton => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Page 01"),
        ),
        floatingActionButton: FloatingActionButton(
            child: Icon(Icons.app_registration),
            backgroundColor: Colors.black,
            onPressed: () {}));
  }
}
