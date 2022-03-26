import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int soundNumber) {
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }

  Expanded buildkey({int soundNum, Color colour}) {
    return Expanded(
      child: FlatButton(
          onPressed: () {
            playSound(soundNum);
          },
          color: colour),
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
            children: <Widget>[
              buildkey(soundNum: 1, colour: Colors.red),
              buildkey(soundNum: 2, colour: Colors.orange),
              buildkey(soundNum: 3, colour: Colors.yellow),
              buildkey(soundNum: 4, colour: Colors.green),
              buildkey(soundNum: 5, colour: Colors.teal),
              buildkey(soundNum: 6, colour: Colors.blue),
              buildkey(soundNum: 7, colour: Colors.purple),
            ],
          ),
        ),
      ),
    );
  }
}
