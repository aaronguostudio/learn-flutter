import 'package:flutter/material.dart';

void main() {
  runApp(
    MyApp()
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueGrey,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                radius: 50.0,
                backgroundColor: Colors.black26,
                backgroundImage: AssetImage("images/avatar.jpeg"),
              ),
              Text(
                "Aaron Guo",
                style: TextStyle(
                  fontSize: 28.0,
                  color: Colors.white,
                  fontWeight: FontWeight.w400,
                  fontFamily: 'Anton'
                ),
              ),
              Text(
                "Full Stack Developer",
                style: TextStyle(
                  fontSize: 18.0,
                  color: Colors.white54,
                  fontWeight: FontWeight.w500,
                  letterSpacing: 2.5
                ),
              ),
              SizedBox(
                height: 50.0,
                width: 260.0,
                child: Divider(
                  color: Colors.white30
                ),
              ),
              Card(
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 50.0),
                child: ListTile(
                  leading: Icon(
                    Icons.phone,
                    color: Colors.blueGrey,
                  ),
                  title: Text(
                    "5877006166",
                    style: TextStyle(
                      color: Colors.blueGrey,
                      fontSize: 18.0
                    ),
                  )
                )
              ),
              Card(
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 50.0),
                child: ListTile(
                  leading: Icon(
                    Icons.email,
                    color: Colors.blueGrey,
                  ),
                  title: Text(
                    "agstudio@gmail.com",
                    style: TextStyle(
                      color: Colors.blueGrey,
                      fontSize: 18.0
                    ),
                  ),
                )
              )
            ],
          ),
        ),
      ),
    );
  }
}

