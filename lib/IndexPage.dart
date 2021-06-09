import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class IndexPage extends StatefulWidget {
  @override
  _IndexPageState createState() => _IndexPageState();
}

class _IndexPageState extends State<IndexPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
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
                child: Text('MotoMechanics'))
          ],
          //title: Text("MotoMechanics"),
        )),

        body: Center(
          child: ListView(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'Serviços',
                    style: TextStyle(
                      color: Colors.black,
                      letterSpacing: 1.5,
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'OpenSans',
                    ),
                  ),
                  Container(
                    height: 30,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(width: 3.0),
                      borderRadius: BorderRadius.all(Radius.circular(5.0)),
                    ),
                    width: 188,
                    height: 108,
                    child: Image.asset('images/service1.jpg'),
                  ),
                  Text("Troca de Óleo"),
                  Container(
                    height: 30,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(width: 3.0),
                      borderRadius: BorderRadius.all(Radius.circular(5.0)),
                    ),
                    width: 188,
                    height: 108,
                    child: Image.asset('images/service2.jpg'),
                  ),
                  Text("Troca de Relação"),
                  Container(
                    height: 30,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(width: 3.0),
                      borderRadius: BorderRadius.all(Radius.circular(5.0)),
                    ),
                    width: 189,
                    height: 128,
                    child: Image.asset('images/service3.jpg'),
                  ),
                  Text("Troca de Pneu"),
                ],
              ),
            ],
          ),
        ),
        //menu
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
            ],
          ),
        ),
      ),
    );
  }
}
