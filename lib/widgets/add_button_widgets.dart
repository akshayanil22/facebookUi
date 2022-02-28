import 'package:flutter/material.dart';

class AddButtonWidget extends StatelessWidget {

  final Color color;
  final Color buttonColor;
  final double size;
  final double iconSize;

  AddButtonWidget({this.color=Colors.blue,this.buttonColor=Colors.white,this.size=40,this.iconSize=2});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: size,
        height: size,
        decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(100),
            border: Border.all(
                color: Colors.white,
                width: iconSize,
            )
        ),
        child: Icon(Icons.add,color: buttonColor,),
    );
  }
}
