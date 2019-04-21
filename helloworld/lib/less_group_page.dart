import 'package:flutter/material.dart';
import 'package:flutter_color_plugin/flutter_color_plugin.dart';

class LessGroupPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    TextStyle ts = TextStyle(fontSize: 20);

    return MaterialApp(
      title: 'Stateless Component',
      theme: ThemeData(
        primaryColor: Colors.blue
      ),
      home: Scaffold(
        appBar: AppBar(title: Text('Stateless Widget')),
        body: Container(
          padding: EdgeInsets.all(20),
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: Colors.white,
          ),
          child: Column(
            children: <Widget>[
              Text(
                "Hello",
                style: ts,
              ),
              Icon(
                Icons.android,
                size: 50,
                color: Colors.red,
              ),
              Chip(
                avatar: Icon(Icons.access_alarm, color: Colors.white,),
                label: Text(
                  "Test",
                  style: TextStyle(
                    color: Colors.white
                  ),
                ),
                backgroundColor: Colors.blueGrey,
              ),
              Divider(color: ColorUtil.color("#c8c8c8")),
              Card(
                color: Colors.white,
                elevation: 1,
                margin: EdgeInsets.all(10),
                child: Container(
                  padding: EdgeInsets.all(10),
                  child: Text(
                    "This is a card",
                    style: ts,
                  ),
                ),
              ),
              AlertDialog(
                title: Text("Hey"),
                content: Text("Test"),
              )
            ],
          ),
        )
      )
    );
  }
  
}