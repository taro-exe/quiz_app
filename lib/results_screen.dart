import 'package:flutter/material.dart';

class ResultsScreen extends StatelessWidget {
  const ResultsScreen({super.key});

  @override
  Widget build(context) {
    return Container(
      margin: const EdgeInsets.all(40),
      child: Column(
        children: [
          const Text('Results Screen'),
          Container(),
          const Text('That\'s all'),
        ],
      ),
    );
  }
}
