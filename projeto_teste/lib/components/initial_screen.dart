import 'package:flutter/material.dart';
import 'package:projeto_teste/screens/form_screen.dart';
import 'package:projeto_teste/screens/task.dart';

class InitialScreen extends StatefulWidget {
  const InitialScreen({super.key});

  @override
  State<InitialScreen> createState() => _InitialScreenState();
}

class _InitialScreenState extends State<InitialScreen> {
  bool opacidade = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Tarefas')),
      body: ListView(
        children: [
          Task('Aprender Flutter', 'assets/images/caramelo1.jpg', 3),
          Task('Fazer o APP do TCC', 'assets/images/caramelo2.jpeg', 5),
          Task('Aprender usar Material', 'assets/images/caramelo3.png', 1),
          Task('Escrever os procedimentos', 'assets/images/caramelo4.webp', 2),
          SizedBox(height: 80),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => FormScreen()),
          );
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
