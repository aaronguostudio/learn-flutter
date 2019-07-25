import 'package:flutter/material.dart';

class CardIcon extends StatelessWidget {

  CardIcon({ @required this.icon, @required this.title, @required this.titleStyle });

  final IconData icon;
  final String title;
  final TextStyle titleStyle;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          icon,
          size: 80.0,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          title,
          style: titleStyle,
        )
      ],
    );
  }
}
