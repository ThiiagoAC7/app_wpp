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
            SizedBox(
              width: 20,
            ),
            Text(
              nome,
              style: TextStyle(
                color: Color.fromRGBO(174, 186, 193, 1),
              ),
            ),
          ],
        ),
        backgroundColor: Color.fromRGBO(32, 44, 51, 1.0),
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              color: Color.fromARGB(255, 24, 32, 37),
            ),
          ),
          Container(
            color: Color.fromRGBO(32, 44, 51, 1),
            child: TextFormField(
              decoration: InputDecoration(
                fillColor: Color.fromRGBO(42, 57, 66, 1),
                filled: true,
                suffixIcon: Icon(
                  Icons.send,
                  color: Color.fromRGBO(134, 150, 160, 1),
                ),
                hintText: 'Mensagem...',
                hintStyle: TextStyle(
                  color: Color.fromRGBO(134, 150, 160, 1),
                ),
                border: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Color.fromRGBO(32, 44, 51, 1),
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
