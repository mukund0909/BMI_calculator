import 'dart:math';
import 'package:bmi_calculator/screen/ResultPage.dart';
import 'component/BottomButton.dart';
import 'screen/input_page.dart';
import 'screen/ResultPage.dart';
import 'component/round_icon_button.dart';
import 'package:bmi_calculator/component/reusable.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'component/cardinside.dart';
import 'constraints.dart';
void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xFF0A0E21),
        scaffoldBackgroundColor: Color(0xFF0A0E21),
      ),
      home: InputPage(),
    );
  }
}