import 'package:flutter/material.dart';

class VibrationButton extends StatelessWidget {
  const VibrationButton({
    super.key,
    required this.onPressed,
    required this.text,
    this.isStop = false,
    this.isVibrating = false,
  });

  final VoidCallback onPressed;
  final String text;
  final bool isStop;
  final bool isVibrating;

  @override
  Widget build(BuildContext context) {
    final bool isDisabled = isStop ? !isVibrating : isVibrating;

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ElevatedButton(
        onPressed: isDisabled ? null : onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: isStop ? Colors.red : Colors.blueAccent,
          foregroundColor: Colors.white,
          disabledBackgroundColor: Colors.grey,
          disabledForegroundColor: Colors.white70,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [Icon(isStop ? Icons.stop : Icons.play_arrow), Text(text)],
        ),
      ),
    );
  }
}
