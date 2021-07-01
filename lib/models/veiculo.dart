import 'package:flutter/material.dart';

class Veiculo {
  final String id;
  final String modelo;
  final String ano;
  final String cor;
  final String placa;
  final String fotoUrl;

  const Veiculo({
    this.id,
    @required this.modelo,
    @required this.ano,
    @required this.cor,
    @required this.placa,
    @required this.fotoUrl,
  });
}
