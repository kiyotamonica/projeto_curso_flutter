import 'package:flutter/material.dart';
import 'package:projeto_teste/components/initial_screen.dart';
import 'package:projeto_teste/screens/form_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const InitialScreen(),
    );
  }
}

