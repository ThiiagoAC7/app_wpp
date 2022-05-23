import 'package:app_wpp/Model/conversa.dart';
import 'package:flutter/material.dart';
import 'package:app_wpp/conversa_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static const String _title = 'WhatsApp';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 24, 32, 37),
      appBar: AppBar(
        title: const Text(
          "WhatsApp",
          style: TextStyle(
            color: Color.fromRGBO(174, 186, 193, 1),
          ),
        ),
        backgroundColor: Color.fromRGBO(32, 44, 51, 1.0),
      ),
      body: Center(
        child: Scrollbar(
          child: ConversaWidget(),
          isAlwaysShown: true,
          thickness: 10,
        ),
      ),
    );
  }
}
