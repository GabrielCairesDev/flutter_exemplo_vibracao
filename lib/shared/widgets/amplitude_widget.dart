import 'package:flutter/material.dart';

class AmplitudeWidget extends StatelessWidget {
  const AmplitudeWidget({
    super.key,
    required this.amplitude,
    required this.onPresseddecrement,
    required this.onPressedincrement,
  });

  final int amplitude;
  final VoidCallback onPresseddecrement;
  final VoidCallback onPressedincrement;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Column(
          children: [
            Text('Amplitude', style: TextStyle(fontSize: 16)),
            SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  onPressed: onPresseddecrement,
                  icon: Icon(Icons.remove_circle, color: Colors.red),
                  iconSize: 40,
                ),
                Text(
                  amplitude.toString(),
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue,
                  ),
                ),
                IconButton(
                  onPressed: onPressedincrement,
                  icon: Icon(Icons.add_circle, color: Colors.green),
                  iconSize: 40,
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
