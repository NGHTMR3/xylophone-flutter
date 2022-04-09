import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  double gap = 6.0;
  void playSound(buttonNum) {
    final player = AudioCache();
    player.play('note$buttonNum.wav');
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
                  Expanded(
                    child: Container(
                      color: Colors.red.shade500,
                      child: TextButton(
                        onPressed: () {
                          playSound('1');
                        },
                      ),
                    ),
                  ),
                  SizedBox(height: gap),
                  Expanded(
                    child: Container(
                      color: Colors.pink.shade500,
                      child: TextButton(
                        style: ButtonStyle(),
                        onPressed: () {
                          playSound('2');
                        },
                      ),
                    ),
                  ),
                  SizedBox(height: gap),
                  Expanded(
                    child: Container(
                      color: Colors.purple.shade500,
                      child: TextButton(
                        onPressed: () {
                          playSound('3');
                        },
                      ),
                    ),
                  ),
                  SizedBox(height: gap),
                  Expanded(
                    child: Container(
                      color: Colors.deepPurple.shade500,
                      child: TextButton(
                        onPressed: () {
                          playSound('4');
                        },
                      ),
                    ),
                  ),
                  SizedBox(height: gap),
                  Expanded(
                    child: Container(
                      color: Colors.indigo.shade500,
                      child: TextButton(
                        onPressed: () {
                          playSound('5');
                        },
                      ),
                    ),
                  ),
                  SizedBox(height: gap),
                  Expanded(
                    child: Container(
                      color: Colors.blue.shade500,
                      child: TextButton(
                        onPressed: () {
                          playSound('6');
                        },
                      ),
                    ),
                  ),
                  SizedBox(height: gap),
                  Expanded(
                    child: Container(
                      color: Colors.lightBlue.shade500,
                      child: TextButton(
                        onPressed: () {
                          playSound('7');
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
