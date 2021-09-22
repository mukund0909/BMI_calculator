import 'dart:math';

import 'package:bmi_calculator/calculator_brain.dart';
import 'package:bmi_calculator/component/reusable.dart';
import 'package:bmi_calculator/component/round_icon_button.dart';
import 'package:bmi_calculator/screen/ResultPage.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../component/BottomButton.dart';
import '../component/cardinside.dart';
import '../constraints.dart';
enum Gender
{
  male,
  female,
  none,
}
class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Color malecolor=kActiveCardColour,femalecolor=kActiveCardColour;
  Gender selectedgender=Gender.none;
  int height=180,weight=74,age=19;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        children: <Widget>[
          Expanded(child: Row(
            children: <Widget>[
              Expanded(
                child: GestureDetector(
                  onTap: (){
                    setState(() {
                      selectedgender=Gender.male;
                    });
                  },
                  child: Reusablecard(
                    Colour :selectedgender==Gender.male?kActiveCardColour:kInactiveCardColour,
                    card: cardinside(s: 'MALE', ic: FontAwesomeIcons.mars,),
                  ),
                ),
              ),
              Expanded(child: GestureDetector(
                onTap: ()
                {
                  setState(() {
                    selectedgender=Gender.female;
                  });
                },
                child: Reusablecard(
                  Colour :selectedgender==Gender.female?kActiveCardColour:kInactiveCardColour,
                  card: cardinside(s: 'FEMALE', ic: FontAwesomeIcons.venus,),
                ),
              ),
              ),
            ],
          ),
          ),
          Expanded(child: Reusablecard(
            Colour: kActiveCardColour,
            card: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'HEIGHT',
                  style: klabelstyle,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.baseline,
                  textBaseline: TextBaseline.alphabetic,
                  children: <Widget>[
                    Text(
                      height.toString(),
                      style: knumberstyle,
                    ),
                    Text(
                      'CM',
                      style: klabelstyle,
                    ),
                  ],
                ),
                SliderTheme(
                  data: SliderTheme.of(context).copyWith(
                    inactiveTrackColor: Color(0xFF8D8E98),
                    activeTrackColor: Colors.white,
                    thumbColor: Color(0xFFEB1555),
                    overlayColor: Color(0x29EB1555),
                    thumbShape: RoundSliderThumbShape(enabledThumbRadius: 15),
                    overlayShape: RoundSliderOverlayShape(overlayRadius: 30),
                  ),
                  child: Slider(
                    value: height.toDouble(),
                    min: 120.0,
                    max: 220,
                    onChanged: (double newvalue){
                      setState(() {
                        height=newvalue.round();
                      });
                    },
                  ),
                ),
              ],
            ),
          ),
          ),
          Expanded(child: Row(
            children: <Widget>[
              Expanded(child: Reusablecard(
                Colour: kActiveCardColour,
                card: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'WEIGHT',
                      style: klabelstyle,
                    ),
                    Text(
                      weight.toString(),
                      style: knumberstyle,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        RoundIconButton(icon: FontAwesomeIcons.minus, press: (){
                          setState(() {
                            weight=max(weight-1,0);
                          });
                        },
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        RoundIconButton(icon: FontAwesomeIcons.plus, press: (){
                          setState(() {
                            weight++;
                          });
                        },
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              ),
              Expanded(child: Reusablecard(
                Colour: kActiveCardColour,
                card: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'AGE',
                      style: klabelstyle,
                    ),
                    Text(
                      age.toString(),
                      style: knumberstyle,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        RoundIconButton(icon: FontAwesomeIcons.minus, press: (){
                          setState(() {
                            age=max(age-1,0);
                          });
                        },
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        RoundIconButton(icon: FontAwesomeIcons.plus, press: (){
                          setState(() {
                            age++;
                          });
                        },
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              ),
            ],
          ),
          ),
          BottomButton('CALCULATE', (){
            CalculatorBrain ob1=CalculatorBrain(height: height,weight: weight);
            Navigator.push(context, MaterialPageRoute(builder: (context)=>ResultPage(ob1.calculateBMI(),ob1.getResult(),ob1.getInterpretion())));
          }),
        ],
      ),
    );
  }
}
