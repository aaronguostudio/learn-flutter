import 'package:flutter/material.dart';

class StatefulGroupPage extends StatefulWidget {

  StatefulGroupPage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _StatefulGroupPageState createState() => _StatefulGroupPageState();
}

class _StatefulGroupPageState extends State {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Test"),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home, color: Colors.grey),
              activeIcon: Icon(Icons.home, color: Colors.blue),
              title: Text('Home'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.list, color: Colors.grey),
              activeIcon: Icon(Icons.list, color: Colors.blue),
              title: Text('List'),
            )
          ],
        ),
        body: Center(
          child: Column(
            children: <Widget>[
              Text("test"),
            ],
          ),
        ),
      )
    );
  }

}