import 'package:flutter/material.dart';
import 'Model/conversa.dart';

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
          child: Row(
            children: [
              Container(
                width: 40,
                margin:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                decoration: BoxDecoration(
                  border: Border.all(width: 2, color: Colors.green),
                ),
                child: Text(
                  conversas[index].id.toString(),
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.purple,
                  ),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    conversas[index].nome!,
                    style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Color.fromRGBO(174, 186, 193, 1)),
                  ),
                  Text(
                    "Conversa......",
                    style: TextStyle(
                        fontSize: 12,
                        color: Color.fromRGBO(174, 186, 193, 0.7)),
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }
}
