import 'package:flutter/material.dart';

class HomeViewModel extends ChangeNotifier {
  bool isVibrating = false;

  void startVibration() {
    isVibrating = true;
    notifyListeners();
    debugPrint('--- > Vibração Continua Iniciada < ---');
  }

  void startVibrationTemporized() {
    isVibrating = true;
    notifyListeners();
    debugPrint('--- > Vibração Temporizada Iniciada < ---');
  }

  void pauseVibration() {
    isVibrating = false;
    notifyListeners();
    debugPrint('--- > Vibração Parada < ---');
  }
}
