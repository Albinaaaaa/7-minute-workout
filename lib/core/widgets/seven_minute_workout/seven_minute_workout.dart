import 'package:flutter/material.dart';

class SevenMinuteWorkout extends StatelessWidget {
  const SevenMinuteWorkout({super.key, required this.size});

  final double size;

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        style: TextStyle(
          fontFamily: 'Yatra',
          fontSize: size,
          color: Colors.white,
          shadows: const [
            Shadow(
              offset: Offset(1.0, 3.0),
              blurRadius: 4.0,
              color: Color.fromARGB(75, 0, 0, 0),
            ),
          ],
        ),
        children: const [
          TextSpan(
            text: '7',
            style: TextStyle(fontWeight: FontWeight.w400),
          ),
          TextSpan(
            text: '\tminute\t',
            style: TextStyle(
              color: Color(0xFF007AFF),
            ),
          ),
          TextSpan(text: 'workout'),
        ],
      ),
    );
  }
}
