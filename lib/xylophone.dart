import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  void playSound(int? sound) {
    final player = AudioPlayer();
    player.play(AssetSource('note$sound.wav'));
  }

  Expanded handleButton({Color? color, int? numSound}) {
    return Expanded(
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(color),
        ),
        onPressed: () {
          playSound(numSound);
        },
        child: Text('Click'),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            handleButton(color: Colors.brown, numSound: 1),
            handleButton(color: Colors.black, numSound: 2),
            handleButton(color: Colors.red, numSound: 3),
            handleButton(color: Colors.yellow, numSound: 4),
            handleButton(color: Colors.grey, numSound: 5),
            handleButton(color: Colors.cyanAccent, numSound: 6),
            handleButton(color: Colors.indigo, numSound: 7),
          ],
        )),
      ),
    );
  }
}
