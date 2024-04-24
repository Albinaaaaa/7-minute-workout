import 'package:flutter/material.dart';
import 'package:seven_minute_workout/core/theme/colors.dart';

class CustomFormField extends StatelessWidget {
  const CustomFormField({super.key, required this.hintText});
  final String hintText;

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: hintText == 'Password',
      cursorColor: AppColor.mainBlue,
      decoration: InputDecoration(
        filled: true,
        fillColor: AppColor.borderBlue,
        hintText: hintText,
        hintStyle: TextStyle(color: Colors.grey.shade700, fontFamily: 'Lora'),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12.0),
          borderSide: BorderSide.none,
        ),
        contentPadding: const EdgeInsets.symmetric(horizontal: 16.0),
      ),
    );
  }
}
