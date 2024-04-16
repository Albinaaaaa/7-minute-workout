import 'package:flutter/material.dart';

class CircleGradient extends StatelessWidget {
  final double radius;
  final Color color;
  final bool gradient;

  const CircleGradient(
      {super.key,
      required this.radius,
      required this.color,
      required this.gradient});

  @override
  Widget build(BuildContext context) {
    return gradient
        ? Container(
            width: radius * 2,
            height: radius * 2,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              gradient: RadialGradient(
                colors: [color.withOpacity(0.20), color],
                stops: const [0.0, 1.0],
                center: Alignment.center,
                radius: 0.5,
                focal: Alignment.center,
                focalRadius: 0.1,
              ),
            ),
          )
        : Container(
            width: radius * 2,
            height: radius * 2,
            decoration: BoxDecoration(shape: BoxShape.circle, color: color),
          );
  }
}
