import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CadastroPage extends StatefulWidget {
  @override
  _CadastroPageState createState() => _CadastroPageState();
}

class _CadastroPageState extends State<CadastroPage> {
  String nome = '';
  String email = '';
  String cpf = '';
  String senha = '';

  @override
  Widget build(BuildContext context) {
    return Material(
        child: SizedBox(
      width: double.infinity,
      height: double.infinity,
      child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            //mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 50,
              ),
              Container(
                width: 180,
                height: 180,
                child: Image.asset('images/motocicleta.png'),
              ),
              Container(
                height: 25,
              ),
              TextField(
                onChanged: (text) {
                  nome = text;
                },
                decoration: InputDecoration(
                    labelText: 'Nome', border: OutlineInputBorder()),
              ),
              TextField(
                onChanged: (text) {
                  email = text;
                },
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                    labelText: 'E-mail', border: OutlineInputBorder()),
              ),
              TextField(
                onChanged: (text) {
                  cpf = text;
                },
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    labelText: 'CPF', border: OutlineInputBorder()),
              ),
              TextField(
                onChanged: (text) {
                  senha = text;
                },
                obscureText: true,
                decoration: InputDecoration(
                    labelText: 'Senha', border: OutlineInputBorder()),
              ),
              ElevatedButton(
                  onPressed: () {
                    if (nome != '' && email != '' && cpf != '' && senha != '') {
                      print("cadastrar $nome");
                      Navigator.of(context).pushReplacementNamed('/home');
                    } else {
                      print("Dados incompletos, preencha-os corretamente !");
                    }
                  },
                  child: Text('Cadastrar'))
            ],
          )),
    ));
  }
}
