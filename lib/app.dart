import 'package:flutter/material.dart';
import 'package:seven_minute_workout/screens/start_screen.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          backgroundColor: Color.fromARGB(255, 221, 233, 246),
        ),
        scaffoldBackgroundColor: const Color.fromARGB(255, 221, 233, 246),
      ),
      home: const StartScreen(),
    );
  }
}
