import 'package:flutter/material.dart';
class Reusablecard extends StatelessWidget {
  Color Colour;
  Widget card;
  Reusablecard({this.Colour,this.card});
  @override
  Widget build(BuildContext context) {
    return Container(
      child: card,
      margin: EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: Colour,
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }
}