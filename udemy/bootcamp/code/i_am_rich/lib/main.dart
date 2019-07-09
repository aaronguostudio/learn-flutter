import 'package:flutter/material.dart';

void main() => runApp(
  MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.blueGrey[300],
      appBar: AppBar(
        title: Text("I Am Rich"),
        backgroundColor: Colors.blueGrey[900],
      ),
      body: Center(
        child: Image(
            image: AssetImage("images/image.jpg")
            // image: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ35L6fXk7mpwBbwbgXr1LdZmtyRoL9WV6LFHy8Ob-hcH9pF8qkuw')
        ),
      ),
    ),
  ),
);