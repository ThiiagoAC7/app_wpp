import 'package:flutter/material.dart';
import 'Model/conversa.dart';
import 'tela_contato.dart';

class ConversaWidget extends StatelessWidget {
  List<Conversa> conversas = getConversaList();

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: conversas.length,
      padding: const EdgeInsets.all(10),
      itemBuilder: (context, index) {
        return Card(
          color: Color.fromARGB(255, 24, 32, 37),
          child: ListTile(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => telaContato(
                    conversas[index].nome!,
                    conversas[index].imagePath!,
                  ),
                ),
              );
            },
            leading: CircleAvatar(
              backgroundImage: AssetImage(conversas[index].imagePath!),
            ),
            title: Text(
              conversas[index].nome!,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Color.fromRGBO(174, 186, 193, 1),
              ),
            ),
            subtitle: Text(
              conversas[index].lastText!,
              style: TextStyle(
                fontSize: 12,
                color: Color.fromRGBO(174, 186, 193, 1),
              ),
            ),
          ),
        );
      },
    );
  }
}
