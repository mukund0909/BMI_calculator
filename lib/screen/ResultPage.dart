import 'package:bmi_calculator/constraints.dart';
import 'package:bmi_calculator/main.dart';
import 'package:bmi_calculator/component/reusable.dart';
import 'package:flutter/material.dart';

import '../component/BottomButton.dart';
class ResultPage extends StatelessWidget {
  String bmiresult,resulttext,interpretation;
  ResultPage(this.bmiresult,this.resulttext,this.interpretation);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('BMI CALCULATOR'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Expanded(child: Container(
              padding: EdgeInsets.all(15),
              alignment: Alignment.bottomLeft,
              child: Text('Your Results',style: ktitlestyle,),
            ),),
            Expanded(flex: 5,
                child: Reusablecard(Colour: kActiveCardColour,card: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text(bmiresult,style: kresulttextstyle,),
                    Text(resulttext,style: kbmitextstyle,),
                    Text(interpretation,
                      textAlign: TextAlign.center,
                      style: kbodytextstyle,),
                  ],
                ),),
            ),
            BottomButton('RE-CALCULATE', (){Navigator.pop(context);}),
          ],
        ),
      );
  }
}
