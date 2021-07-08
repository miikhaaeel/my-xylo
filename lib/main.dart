import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int soundNumber) {
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }

  Expanded buttonKey({required Color color, required int number}) {
    return Expanded(
      child: TextButton(
        style: TextButton.styleFrom(
          backgroundColor: color,
        ),
        onPressed: () {
          playSound(number);
        },
        child: Container(),
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
            children: [
              buttonKey(color: Colors.red, number: 1),
              buttonKey(color: Colors.orange, number: 2),
              buttonKey(color: Colors.yellow, number: 3),
              buttonKey(color: Colors.green, number: 4),
              buttonKey(color: Colors.blue, number: 5),
              buttonKey(color: Colors.indigo, number: 6),
              buttonKey(color: Colors.purple, number: 7),
            ],
          ),
        ),
      ),
    );
  }
}
