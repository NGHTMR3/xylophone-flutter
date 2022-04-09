import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  double gap = 6.0;
  void playSound(int buttonNum) {
    final player = AudioCache();
    player.play('note$buttonNum.wav');
  }

  Widget buildKey(int soundNum, colorSelection) {
    return Expanded(
      child: Container(
        color: colorSelection,
        child: TextButton(
          onPressed: () {
            playSound(soundNum);
          },
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueGrey.shade900,
        body: SafeArea(
          child: Center(
            child: Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  buildKey(1, Colors.purple.shade600),
                  buildKey(2, Colors.deepPurple.shade600),
                  buildKey(3, Colors.indigo.shade600),
                  buildKey(4, Colors.blue.shade600),
                  buildKey(5, Colors.lightBlue.shade600),
                  buildKey(6, Colors.cyan.shade600),
                  buildKey(7, Colors.teal.shade600),
                  buildKey(8, Colors.green.shade600),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
