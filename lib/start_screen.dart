import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});

  final void Function() startQuiz;

  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/images/puzzle.png',
            width: MediaQuery.of(context).size.width * 0.7,
            color: const Color.fromARGB(150, 255, 255, 255),
          ),
          const SizedBox(height: 50.0),
          const Text(
            'THIS QUIZ APP IS SOMEWHAT NICE!',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Color.fromARGB(150, 255, 255, 255),
              fontSize: 24.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 50.0),
          OutlinedButton.icon(
            onPressed: startQuiz,
            style: OutlinedButton.styleFrom(
              foregroundColor: Colors.white,
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(10.0),
                ),
              ),
            ),
            icon: const Icon(Icons.arrow_right_alt),
            label: const Text('Start Quiz'),
          )
        ],
      ),
    );
  }
}
