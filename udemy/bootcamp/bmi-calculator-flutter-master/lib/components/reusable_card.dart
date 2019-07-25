import 'package:flutter/material.dart';


// stateless is immutable, if change, must create a new instance
// const 不可用在 runtime
// final 可以用在 runtime
class ReusableCard extends StatelessWidget {

  ReusableCard({ @required this.color, this.cardChild, @required this.handleTap });

  final Color color;
  final Widget cardChild;
  Function handleTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: handleTap,
      child: Container(
        margin: EdgeInsets.all(8.0),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: cardChild,
      ),
    );
  }
}