import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AgendamentoPage extends StatefulWidget {
  @override
  _AgendamentoPageState createState() => _AgendamentoPageState();
}

class _AgendamentoPageState extends State<AgendamentoPage> {
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
                    child: Text('Agendamento'))
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
                              labelText: 'Data', border: OutlineInputBorder()),
                        ),
                        Container(
                          height: 15,
                        ),
                        TextField(
                          decoration: InputDecoration(
                              labelText: 'Horário',
                              border: OutlineInputBorder()),
                        ),
                        Container(
                          height: 15,
                        ),
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
                              enabled: true,
                              labelText: 'Placa',
                              border: OutlineInputBorder()),
                        ),
                        Container(
                          height: 15,
                        ),
                        TextField(
                          decoration: InputDecoration(
                              enabled: true,
                              labelText: 'Cor',
                              border: OutlineInputBorder()),
                        ),
                        ElevatedButton(
                            onPressed: () {
                              Navigator.of(context)
                                  .pushReplacementNamed('/listagenda');
                            },
                            child: Text('Agendar'))
                      ],
                    )),
              )
            ])));
  }
}
