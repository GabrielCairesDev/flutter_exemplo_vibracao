import 'package:flutter/material.dart';
import 'package:flutter_exemplo_vibracao/presentation/home/view/home_view.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Exemplo Vibracao',
      home: const HomeView(),
    );
  }
}
