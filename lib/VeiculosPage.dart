import 'package:app01/provider/veiculos.dart';
import 'package:app01/routes/app_routes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'components/veiculo_tile.dart';

class VeiculosPage extends StatefulWidget {
  _VeiculosPageState createState() => _VeiculosPageState();
}

class _VeiculosPageState extends State<VeiculosPage> {
  @override
  Widget build(BuildContext context) {
    final Veiculos veiculos = Provider.of(context);
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.red[600],
          title: Row(
            children: [
              Image.asset(
                'images/motocicleta.png',
                fit: BoxFit.contain,
                height: 32,
              ),
              Container(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('Meus Veículos'))
            ],
            //title: Text("MotoMechanics"),
          )),
      body: ListView.builder(
        itemCount: veiculos.count,
        itemBuilder: (ctx, i) => VeiculoTile(veiculos.byIndex(i)),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.black,
        child: Icon(
          Icons.add,
        ),
        onPressed: () {
          Navigator.of(context).pushNamed(AppRoutes.VEICULO_FORM);
        },
      ),
      drawer: Container(
        color: Colors.white,
        child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
              decoration: BoxDecoration(color: Colors.red[600]),
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
                  Navigator.of(context).pushReplacementNamed('/listorcamento');
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
    );
  }
}
