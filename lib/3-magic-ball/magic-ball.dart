import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  return runApp(
    MyApp(),
  );
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int answerNumber = 1;

  void answer() {
    setState(() {
      answerNumber = Random().nextInt(4) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Ask Me Anything'),
        ),
        body: Center(
          child: Column(
            children: [
              Expanded(
                child: TextButton(
                  onPressed: () {
                    answer();
                  },
                  child: Image(
                    image: AssetImage('images/ball$answerNumber.png'),
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
