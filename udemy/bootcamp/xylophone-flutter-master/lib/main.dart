import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {

  void playSound (int sound) {
    final AudioCache player = AudioCache();
    player.play("note$sound.wav");
  }

  Widget buildKey (int sound, String name) => Expanded(
    child: FlatButton(
        onPressed: () {
          playSound(sound);
        },
        color: Colors.blueGrey[(sound * 100)],
        child: Text(name)
    ),
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildKey(1, "do"),
              buildKey(2, "re"),
              buildKey(3, "mi"),
              buildKey(4, "fa"),
              buildKey(5, "so"),
              buildKey(6, "la"),
              buildKey(7, "xi"),
            ],
          ),
        ),
      ),
    );
  }
}
