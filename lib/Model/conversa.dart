import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class Conversa {
  int? id;
  String? nome;
  String? numTelefone;
  DateTime? data;
  // Image? foto;

  Conversa(
      {@required this.id,
      @required this.nome,
      @required this.numTelefone,
      @required this.data});
}

List<Conversa> conversaList = [];

List<Conversa> getConversaList() {
  for (int i = 1; i <= 15; i++) {
    conversaList.add(
      Conversa(
        id: i,
        nome: "Nome" + i.toString(),
        numTelefone: "(31) 99999-9999",
        data: DateTime.now(),
      ),
    );
  }
  return conversaList;
}
