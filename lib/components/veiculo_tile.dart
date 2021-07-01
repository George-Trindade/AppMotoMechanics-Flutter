import 'package:app01/provider/veiculos.dart';
import 'package:app01/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:app01/models/veiculo.dart';
import 'package:provider/provider.dart';

class VeiculoTile extends StatelessWidget {
  final Veiculo veiculo;
  const VeiculoTile(this.veiculo);

  @override
  Widget build(BuildContext context) {
    final foto = veiculo.fotoUrl == null || veiculo.fotoUrl.isEmpty
        ? CircleAvatar(child: Icon(Icons.motorcycle_rounded))
        : CircleAvatar(backgroundImage: NetworkImage(veiculo.fotoUrl));
    return ListTile(
      leading: foto,
      title: Text(veiculo.modelo),
      subtitle: Text(veiculo.cor),
      trailing: Container(
        width: 100,
        child: Row(
          children: <Widget>[
            IconButton(
              icon: Icon(Icons.edit),
              color: Colors.black,
              onPressed: () {
                Navigator.of(context).pushNamed(
                  AppRoutes.VEICULO_FORM,
                  arguments: veiculo,
                );
              },
            ),
            IconButton(
              icon: Icon(Icons.delete_forever),
              color: Colors.black,
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (ctx) => AlertDialog(
                    title: Text('Excluir Veículo'),
                    content: Text('Tem certeza?'),
                    actions: <Widget>[
                      ElevatedButton(
                        child: Text('Não'),
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                      ),
                      ElevatedButton(
                        child: Text('Sim'),
                        onPressed: () {
                          Provider.of<Veiculos>(context, listen: false)
                              .remove(veiculo);
                          Navigator.of(context).pop();
                        },
                      ),
                    ],
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
