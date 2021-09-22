import 'package:bmi_calculator/main.dart';
import 'package:flutter/material.dart';
import '../constraints.dart';
class cardinside extends StatelessWidget {
  String s;
  IconData ic;
  cardinside({this.ic,this.s});
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          ic,
          size: 80,
        ),
        SizedBox(
          height: 15,
        ),
        Text(
          s,
          style: klabelstyle,
        ),
      ],
    );
  }
}