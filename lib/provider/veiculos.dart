import 'dart:math';

import 'package:app01/data/dummy_veiculos.dart';
import 'package:app01/models/veiculo.dart';
import 'package:flutter/cupertino.dart';

class Veiculos with ChangeNotifier {
  final Map<String, Veiculo> _items = {...DUMMY_VEICULOS};

  List<Veiculo> get all {
    return [..._items.values];
  }

  int get count {
    return _items.length;
  }

  Veiculo byIndex(int i) {
    return _items.values.elementAt(i);
  }

  void put(Veiculo veiculo) {
    if (veiculo == null) {
      return;
    }
    //update
    if (veiculo.id != null &&
        veiculo.id.trim().isNotEmpty &&
        _items.containsKey(veiculo.id)) {
      _items.update(
        veiculo.id,
        (_) => Veiculo(
          id: veiculo.id,
          modelo: veiculo.modelo,
          ano: veiculo.ano,
          cor: veiculo.cor,
          placa: veiculo.placa,
          fotoUrl: veiculo.fotoUrl,
        ),
      );
      //add
    } else {
      final id = Random().nextDouble().toString();
      _items.putIfAbsent(
        id,
        () => Veiculo(
            id: id,
            modelo: veiculo.modelo,
            ano: veiculo.ano,
            cor: veiculo.cor,
            placa: veiculo.placa,
            fotoUrl: veiculo.fotoUrl),
      );
    }
    notifyListeners();
  }

  void remove(Veiculo veiculo) {
    if (veiculo != null && veiculo.id != null) {
      _items.remove(veiculo.id);
      notifyListeners();
    }
  }
}
