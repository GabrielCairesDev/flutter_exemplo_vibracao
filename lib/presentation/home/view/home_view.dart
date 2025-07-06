import 'package:flutter/material.dart';
import 'package:flutter_exemplo_vibracao/presentation/home/view_model/home_view_model.dart';
import 'package:flutter_exemplo_vibracao/shared/widgets/amplitude_widget.dart';
import 'package:flutter_exemplo_vibracao/shared/widgets/vibration_button_widget.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final vm = HomeViewModel();

  @override
  Widget build(BuildContext context) {
    return ListenableBuilder(
      listenable: vm,
      builder: (context, _) {
        return Scaffold(
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AmplitudeWidget(
                amplitude: vm.amplitude,
                onPresseddecrement: vm.decrementAmplitude,
                onPressedincrement: vm.incrementAmplitude,
              ),
              VibrationButton(
                text: 'Iniciar Vibração Continua',
                isVibrating: vm.isVibrating,
                onPressed: vm.startVibration,
              ),
              VibrationButton(
                text: 'Iniciar Vibração Temporizada',
                isVibrating: vm.isVibrating,
                onPressed: vm.startVibrationTemporized,
              ),
              VibrationButton(
                isStop: true,
                text: 'Parar Vibração',
                isVibrating: vm.isVibrating,
                onPressed: vm.pauseVibration,
              ),
            ],
          ),
        );
      },
    );
  }
}
