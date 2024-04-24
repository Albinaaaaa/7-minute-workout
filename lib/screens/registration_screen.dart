import 'package:flutter/material.dart';
import 'package:seven_minute_workout/core/theme/colors.dart';
import 'package:seven_minute_workout/core/widgets/buttons/registration_button.dart';
import 'package:seven_minute_workout/core/widgets/custom_formfield/custom_formfield.dart';
import 'package:seven_minute_workout/core/widgets/seven_minute_workout/seven_minute_workout.dart';

class RegistrationScreen extends StatelessWidget {
  const RegistrationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const SevenMinuteWorkout(size: 25),
        centerTitle: true,
        automaticallyImplyLeading: false, // delete navigation pop icon
      ),
      body: Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.symmetric(horizontal: 34),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            const Text(
              'Registration',
              style: TextStyle(
                fontFamily: 'Lora',
                color: AppColor.mainBlue,
                fontWeight: FontWeight.w400,
                fontSize: 30.0,
              ),
            ),
            const Column(
              children: [
                CustomFormField(
                  hintText: 'E-mail',
                ),
                SizedBox(height: 20),
                CustomFormField(
                  hintText: 'Password',
                ),
              ],
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 7),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      RegistrationButton(
                        onPressed: () {},
                        text: 'Sign Up',
                      ),
                      RegistrationButton(
                        onPressed: () {},
                        text: 'Sign In',
                      )
                    ],
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 26),
                    child: const Text(
                      'OR',
                      style: TextStyle(
                        fontFamily: 'Lora',
                        color: AppColor.borderBlue,
                        fontWeight: FontWeight.bold,
                        fontSize: 12.0,
                      ),
                    ),
                  ),
                  RegistrationButton(
                    onPressed: () {},
                    icon: Icons.flutter_dash,
                    text: 'Continue With Google',
                  ),
                  const SizedBox(height: 20),
                  RegistrationButton(
                    onPressed: () {},
                    icon: Icons.flutter_dash,
                    text: 'Continue With Facebook',
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
