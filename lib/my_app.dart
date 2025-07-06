import 'package:flutter/material.dart';
import 'package:flutter_exemplo_vibracao/my_home_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Exemplo Vibracao',
      home: const MyHomePage(),
    );
  }
}
