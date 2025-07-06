import 'package:flutter/material.dart';
import 'package:flutter_exemplo_vibracao/shared/widgets/vibration_button_widget.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool isVibrating = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  VibrationButton(
                    text: 'Iniciar Vibração Continua',
                    isVibrating: isVibrating,
                    onPressed: () {
                      debugPrint('--- > Vibração Continua Iniciada < ---');
                      setState(() {
                        isVibrating = true;
                      });
                    },
                  ),
                  VibrationButton(
                    text: 'Iniciar Vibração Temporizada',
                    isVibrating: isVibrating,
                    onPressed: () {
                      debugPrint('--- > Vibração Temporizada Iniciada < ---');
                      setState(() {
                        isVibrating = true;
                      });
                    },
                  ),
                  VibrationButton(
                    isStop: true,
                    text: 'Parar Vibração',
                    isVibrating: isVibrating,
                    onPressed: () {
                      debugPrint('--- > Vibração Parada < ---');
                      setState(() {
                        isVibrating = false;
                      });
                    },
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
