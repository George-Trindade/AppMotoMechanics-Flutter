import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ServicosPage extends StatefulWidget {
  @override
  _ServicosPageState createState() => _ServicosPageState();
}

class _ServicosPageState extends State<ServicosPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: Colors.red[600]),
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
                child: Text('Meus Serviços'))
          ],
          //title: Text("MotoMechanics"),
        )),
        body: Container(
          width: double.infinity,
          height: double.infinity,
          child: Column(//mainAxisAlignment: MainAxisAlignment.center,
              children: [
            Column(
              //mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  children: <Widget>[
                    Text(
                      "   Serviço                  Status        Completo    Veículo",
                      style: TextStyle(
                        color: Colors.black,
                        letterSpacing: 0.2,
                        //fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                Container(
                  height: 5,
                ),
                Row(
                  children: [
                    Text(
                        "Troca de Manete       Finalizado      100%        Fan 150"),
                  ],
                ),
                Container(
                  height: 5,
                ),
                Row(
                  children: [
                    Text(
                        "Troca de Relação      Montando        75%        Fan 150"),
                  ],
                ),
                Container(
                  height: 5,
                ),
                Row(
                  children: [
                    Text(
                        "Troca de Pneu       Desmontando      20%        Fan 150"),
                  ],
                ),
              ],
            )
          ]),
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.black,
          child: Icon(
            Icons.add,
          ),
          onPressed: () {
            Navigator.of(context).pushReplacementNamed('/agenda');
          },
        ),
        drawer: Container(
          color: Colors.white,
          child: ListView(
            children: <Widget>[
              UserAccountsDrawerHeader(
                accountName: Text("Macoratti"),
                accountEmail: Text("macoratti@yahoo.com"),
                currentAccountPicture: CircleAvatar(
                  radius: 30.0,
                  backgroundImage: NetworkImage(
                      'http://www.macoratti.net/imagens/pessoas/mac.jpg'),
                  backgroundColor: Colors.transparent,
                ),
              ),
              ListTile(
                  leading: Icon(Icons.home_outlined),
                  title: Text("Principal"),
                  subtitle: Text("Início..."),
                  trailing: Icon(Icons.arrow_forward),
                  onTap: () {
                    Navigator.of(context).pushReplacementNamed('/index');
                  }),
              ListTile(
                  leading: Icon(Icons.calendar_today),
                  title: Text("Agendamento"),
                  subtitle: Text("Meus Agendamentos..."),
                  trailing: Icon(Icons.arrow_forward),
                  onTap: () {
                    Navigator.of(context).pushReplacementNamed('/listagenda');
                  }),
              ListTile(
                  leading: Icon(Icons.paste_outlined),
                  title: Text("Orçamento"),
                  subtitle: Text("Fazer um orçamento..."),
                  trailing: Icon(Icons.arrow_forward),
                  onTap: () {
                    Navigator.of(context)
                        .pushReplacementNamed('/listorcamento');
                  }),
              ListTile(
                  leading: Icon(Icons.miscellaneous_services_sharp),
                  title: Text("Serviços"),
                  subtitle: Text("Meus Serviços..."),
                  trailing: Icon(Icons.arrow_forward),
                  onTap: () {
                    Navigator.of(context).pushReplacementNamed('/servicos');
                  }),
              ListTile(
                  leading: Icon(Icons.motorcycle),
                  title: Text("Veiculos"),
                  subtitle: Text("Meus Veiculos..."),
                  trailing: Icon(Icons.arrow_forward),
                  onTap: () {
                    Navigator.of(context).pushReplacementNamed('/veiculos');
                  }),
            ],
          ),
        ),
      ),
    );
  }
}
