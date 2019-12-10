import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  ReusableCard({this.colour=Colors.transparent, this.cardChild, this.title = false});

  final Color colour;
  final Widget cardChild;
  final bool title;

  @override
  Widget build(BuildContext context) {
    if (title) {
      return Container(
        child: Center(child: cardChild),
        margin: EdgeInsets.all(15),
        decoration: BoxDecoration(
          color: Colors.transparent,
          borderRadius: BorderRadius.circular(10),
        ),
      );
    } else {
      return Container(
        child: cardChild,
        margin: EdgeInsets.all(15),
        decoration: BoxDecoration(
          color: colour,
          borderRadius: BorderRadius.circular(10),
        ),
      );
    }
  }
}
