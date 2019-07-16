import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Container(
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Container(
                  width: double.infinity,
                  child: FlatButton(
                      onPressed: () {
                        final AudioCache player = AudioCache();
                        player.play("note1.wav");
                      },
                      color: Colors.blueGrey[700],
                      child: Text("do")
                  ),
                ),
                Container(
                  width: double.infinity,
                  child: FlatButton(
                      onPressed: () {
                        final AudioCache player = AudioCache();
                        player.play("note2.wav");
                      },
                      child: Text("re"),
                    color: Colors.blueGrey[600],
                  ),
                ),
                Container(
                  width: double.infinity,
                  child: FlatButton(
                    onPressed: () {
                      final AudioCache player = AudioCache();
                      player.play("note3.wav");
                    },
                    child: Text("mi"),
                    color: Colors.blueGrey[500],
                  ),
                ),
                Container(
                  width: double.infinity,
                  child: FlatButton(
                    onPressed: () {
                      final AudioCache player = AudioCache();
                      player.play("note4.wav");
                    },
                    child: Text("mi"),
                    color: Colors.blueGrey[400],
                  ),
                ),
                Container(
                  width: double.infinity,
                  child: FlatButton(
                    onPressed: () {
                      final AudioCache player = AudioCache();
                      player.play("note5.wav");
                    },
                    child: Text("mi"),
                    color: Colors.blueGrey[300],
                  ),
                ),
                Container(
                  width: double.infinity,
                  child: FlatButton(
                    onPressed: () {
                      final AudioCache player = AudioCache();
                      player.play("note6.wav");
                    },
                    child: Text("mi"),
                    color: Colors.blueGrey[200],
                  ),
                ),
                Container(
                  width: double.infinity,
                  child: FlatButton(
                    onPressed: () {
                      final AudioCache player = AudioCache();
                      player.play("note7.wav");
                    },
                    child: Text("mi"),
                    color: Colors.blueGrey[100],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
