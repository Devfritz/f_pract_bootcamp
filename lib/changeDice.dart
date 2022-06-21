import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int changeDiceLeft = 1;
  int changeDiceRight = 1;
  void changeDice() {
    setState(() {
      changeDiceLeft = Random().nextInt(6) + 1;
      changeDiceRight = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: Text(
            'Dice Games',
          ),
        ),
        body: Center(
          child: Row(
            children: [
              Expanded(
                child: TextButton(
                  onPressed: () {
                    changeDice();
                  },
                  child: Image(
                    image: AssetImage('images/dice$changeDiceLeft.png'),
                  ),
                ),
              ),
              Expanded(
                child: TextButton(
                  onPressed: () {
                    changeDice();
                  },
                  child: Image(
                    image: AssetImage('images/dice$changeDiceRight.png'),
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
