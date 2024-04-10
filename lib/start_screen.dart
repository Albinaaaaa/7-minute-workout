import 'package:flutter/material.dart';
import 'package:seven_minute_workout/menu_screen.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  @override
  Widget build(context) {
    return MaterialApp(
      // Wrap with MaterialApp
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 221, 233, 246),
        body: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              const Positioned(
                top: 10.0,
                child: Text(
                  'Improve yourself',
                  style: TextStyle(
                      color: Color.fromARGB(255, 0, 122, 255), fontSize: 35.0),
                ),
              ),
              Stack(
                // Stack for overlapping images
                children: <Widget>[
                  Image.asset('assets/images/main.png',
                      width: 300.0), // Background image
                ],
              ),
              const SizedBox(height: 80.0),
              const SizedBox(height: 30.0),
              OutlinedButton.icon(
                onPressed: () {
                  // Navigate to a new screen (replace 'NewScreen' with your actual screen class)
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(builder: (context) => ''),
                  // );
                },
                label: const Text('Let\'s get started'),
                style: OutlinedButton.styleFrom(
                  foregroundColor: const Color.fromARGB(255, 242, 245, 248),
                  backgroundColor: const Color.fromARGB(255, 0, 122, 255),
                  side: const BorderSide(
                    color: Color.fromARGB(255, 0, 122, 255),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
