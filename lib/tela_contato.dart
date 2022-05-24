import 'package:flutter/material.dart';

class telaContato extends StatelessWidget {
  String nome;
  String imagePath;
  telaContato(this.nome, this.imagePath);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            CircleAvatar(
              backgroundImage: AssetImage(imagePath),
            ),
            Text(
              nome,
              style: TextStyle(color: Color.fromRGBO(174, 186, 193, 1)),
            ),
          ],
        ),
        backgroundColor: Color.fromRGBO(32, 44, 51, 1.0),
      ),
      body: Container(
        color: Color.fromRGBO(32, 44, 51, 1.0),
      ),
    );
  }
}
