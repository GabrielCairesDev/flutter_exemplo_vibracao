import 'package:flutter/material.dart';

class HomeViewModel extends ChangeNotifier {
  bool isVibrating = false;
  int amplitude = 10;

  void decrementAmplitude() {
    if (amplitude > 1) {
      amplitude--;
      notifyListeners();
      debugPrint('--- > Amplitude diminuída: $amplitude < ---');
    }
  }

  void incrementAmplitude() {
    if (amplitude < 100) {
      amplitude++;
      notifyListeners();
      debugPrint('--- > Amplitude aumentada: $amplitude < ---');
    }
  }

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
