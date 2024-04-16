import 'package:flutter/material.dart';
import 'package:seven_minute_workout/core/widgets/button/custom_button.dart';
import 'package:seven_minute_workout/core/widgets/sport_circle/sport_circle.dart';

void main() {
  runApp(const StartScreen());
}

class StartScreen extends StatefulWidget {
  const StartScreen({super.key});

  @override
  _StartScreenState createState() => _StartScreenState();
}

class _StartScreenState extends State<StartScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  bool _showContent = false;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    )..forward().whenComplete(() {
        setState(() {
          _showContent = true;
        });
      });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 221, 233, 246),
        body: Container(
          alignment: Alignment.center,
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Visibility(
                visible: _showContent,
                child: const Text(
                  'Improve yourself',
                  style: TextStyle(
                    fontFamily: 'Yatra',
                    color: Color.fromARGB(255, 0, 122, 255),
                    fontSize: 35.0,
                  ),
                ),
              ),
              const SportCircle(), 
              Visibility(
                visible: _showContent,
                child: CustomButton(
                  onTap: () {},
                  text: 'Let\'s get started',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
