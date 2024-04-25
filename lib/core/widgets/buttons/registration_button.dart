import 'package:flutter/material.dart';
import 'package:seven_minute_workout/core/theme/colors.dart';

class RegistrationButton extends StatelessWidget {
  const RegistrationButton({
    super.key,
    required this.text,
    required this.onPressed,
    this.icon,
  });

  final String text;
  final IconData? icon;
  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    final borderRadius = BorderRadius.circular(10);

    return InkWell(
      onTap: onPressed,
      borderRadius: borderRadius,
      child: Ink(
        decoration: BoxDecoration(
          borderRadius: borderRadius,
        ),
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 11, horizontal: 41),
          decoration: BoxDecoration(
            border: Border.all(
              width: 1,
              color: AppColor.borderBlue,
            ),
            borderRadius: borderRadius,
          ),
          child: icon == null
              ? Text(
                  text,
                  style: const TextStyle(
                    fontFamily: 'Lora',
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                    fontSize: 12.0,
                  ),
                )
              : Row(
                  children: [
                    Icon(icon),
                    const SizedBox(width: 9),
                    Text(
                      text,
                      style: const TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                        fontSize: 12.0,
                      ),
                    ),
                  ],
                ),
        ),
      ),
    );
  }
}
