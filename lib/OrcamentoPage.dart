import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class OrcamentoPage extends StatefulWidget {
  @override
  _OrcamentoPageState createState() => _OrcamentoPageState();
}

class _OrcamentoPageState extends State<OrcamentoPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(primaryColor: Colors.grey[500]),
        home: Scaffold(
            appBar: AppBar(
                title: Row(
              children: [
                Image.asset(
                  'images/motocicleta.png',
                  fit: BoxFit.contain,
                  height: 32,
                ),
                Container(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('Orçamento'))
              ],
              //title: Text("MotoMechanics"),
            )),
            body: ListView(children: <Widget>[
              Container(
                child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      //mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TextField(
                          decoration: InputDecoration(
                              labelText: 'Serviço',
                              border: OutlineInputBorder()),
                        ),
                        Container(
                          height: 15,
                        ),
                        TextField(
                          decoration: InputDecoration(
                              labelText: 'Modelo do Veículo',
                              border: OutlineInputBorder()),
                        ),
                        Container(
                          height: 15,
                        ),
                        TextField(
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                              labelText: 'Ano', border: OutlineInputBorder()),
                        ),
                        Container(
                          height: 15,
                        ),
                        TextField(
                          decoration: InputDecoration(
                              labelText: 'Marca', border: OutlineInputBorder()),
                        ),
                        Container(
                          height: 15,
                        ),
                        TextField(
                          decoration: InputDecoration(
                              labelText: 'Descrição do Problema',
                              border: OutlineInputBorder()),
                        ),
                        Container(
                          height: 15,
                        ),
                        Text('Selecione fotos do problema no veículo:'),
                        Container(
                          height: 3,
                        ),
                        FloatingActionButton(
                          backgroundColor: Colors.black,
                          child: Icon(
                            Icons.photo_size_select_actual_rounded,
                          ),
                          onPressed: () {},
                        ),
                        Container(
                          height: 5,
                        ),
                        FloatingActionButton.extended(
                          backgroundColor: Colors.black,
                          onPressed: () {
                            Navigator.of(context)
                                .pushReplacementNamed('/listorcamento');
                          },
                          label: Text('           Enviar          '),
                        )
                        //child: Text('Enviar'))
                      ],
                    )),
              )
            ])));
  }
}
