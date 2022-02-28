import 'package:flutter/material.dart';

class HeaderButtonWidgets extends StatelessWidget {

  final String buttonName;
  final IconData buttonIcon;
  final Color buttonColor;

  HeaderButtonWidgets({required this.buttonIcon,required this.buttonName,required this.buttonColor});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
        style: ElevatedButton.styleFrom(
          primary: Colors.white,
          elevation: 0,
          shape: StadiumBorder(),
        ),
        onPressed: (){}, icon: Icon(buttonIcon,color:buttonColor,), label: Text(buttonName,style: TextStyle(
        color: Colors.black
    ),));
  }
}
