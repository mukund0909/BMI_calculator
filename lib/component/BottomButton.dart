import 'package:flutter/material.dart';

import '../constraints.dart';
class BottomButton extends StatelessWidget {
  Function ontap;
  String buttontittle;
  BottomButton(this.buttontittle,this.ontap);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        child: Center(child: Text(buttontittle,style: klargebutton,)),
        padding: EdgeInsets.only(bottom: 20),
        color: kBottomContainerColour,
        margin: EdgeInsets.only(top: 10),
        width: double.infinity,
        height: kBottomContainerHeight,
      ),
    );
  }
}
