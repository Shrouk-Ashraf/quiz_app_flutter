import 'package:flutter/material.dart';
import 'package:quiz_app/views/quiz_view.dart';
import 'package:quiz_app/views/welcome_view.dart';

void main() {
  runApp(const QuizApp());
}

class QuizApp extends StatefulWidget {
  const QuizApp({Key? key}) : super(key: key);

  @override
  State<QuizApp> createState() => _QuizAppState();
}

class _QuizAppState extends State<QuizApp> {
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      routes: {
        '/welcome_view': (context) => const WelcomeView(),
        // When navigating to the "/second" route, build the SecondScreen widget.
        '/quiz_view': (context) => const QuizView(),
      },
      debugShowCheckedModeBanner: false,
      home: WelcomeView(),
    );
  }
}
