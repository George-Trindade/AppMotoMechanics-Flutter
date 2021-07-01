import 'package:app01/models/veiculo.dart';
import 'package:app01/provider/veiculos.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AddVeiculos extends StatefulWidget {
  @override
  _AddVeiculosState createState() => _AddVeiculosState();
}

class _AddVeiculosState extends State<AddVeiculos> {
  final _form = GlobalKey<FormState>();

  final Map<String, String> _formData = {};

  void _loadFormData(Veiculo veiculo) {
    if (veiculo != null) {
      _formData['id'] = veiculo.id;
      _formData['modelo'] = veiculo.modelo;
      _formData['ano'] = veiculo.ano;
      _formData['cor'] = veiculo.cor;
      _formData['placa'] = veiculo.placa;
      _formData['fotoUrl'] = veiculo.fotoUrl;
    }
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    final Veiculo veiculo = ModalRoute.of(context).settings.arguments;
    _loadFormData(veiculo);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.grey[500],
          title: Row(
            children: [
              Image.asset(
                'images/motocicleta.png',
                fit: BoxFit.contain,
                height: 32,
              ),
              Container(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('Novo Veículo'))
            ],
          ),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.save),
              color: Colors.black,
              onPressed: () {
                final isValid = _form.currentState.validate();
                if (isValid) {
                  _form.currentState.save();
                  Provider.of<Veiculos>(context, listen: false).put(Veiculo(
                    id: _formData['id'],
                    modelo: _formData['modelo'],
                    ano: _formData['ano'],
                    cor: _formData['cor'],
                    placa: _formData['placa'],
                    fotoUrl: _formData['fotoUrl'],
                  ));
                  Navigator.of(context).pop();
                }
              },
            ),
          ],
        ),
        body: ListView(children: <Widget>[
          Container(
            child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Form(
                    key: _form,
                    child: Column(
                      //mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        TextFormField(
                          initialValue: _formData['modelo'],
                          decoration: InputDecoration(
                            labelText: 'Modelo',
                            border: OutlineInputBorder(),
                          ),
                          onSaved: (value) => _formData['modelo'] = value,
                        ),
                        Container(
                          height: 15,
                        ),
                        TextFormField(
                          initialValue: _formData['ano'],
                          decoration: InputDecoration(
                              labelText: 'Ano', border: OutlineInputBorder()),
                          onSaved: (value) => _formData['ano'] = value,
                        ),
                        Container(
                          height: 15,
                        ),
                        TextFormField(
                          initialValue: _formData['cor'],
                          decoration: InputDecoration(
                              labelText: 'Cor', border: OutlineInputBorder()),
                          onSaved: (value) => _formData['cor'] = value,
                        ),
                        Container(
                          height: 15,
                        ),
                        TextFormField(
                          initialValue: _formData['placa'],
                          decoration: InputDecoration(
                              labelText: 'Placa', border: OutlineInputBorder()),
                          onSaved: (value) => _formData['placa'] = value,
                        ),
                        Container(
                          height: 15,
                        ),
                        TextFormField(
                          initialValue: _formData['fotoUrl'],
                          decoration: InputDecoration(
                              labelText: 'Url da foto',
                              border: OutlineInputBorder()),
                          onSaved: (value) => _formData['fotoUrl'] = value,
                        ),
                        Container(
                          height: 15,
                        ),
                      ],
                    ))),
          )
        ]));
  }
}
