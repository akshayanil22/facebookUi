import 'package:flutter/material.dart';

class AppBarIcons extends StatelessWidget {
  const AppBarIcons({Key? key,required this.iconButton,this.size=40}) : super(key: key);

  final IconData iconButton;
  final double size;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(5),
      decoration: BoxDecoration(
        color: Colors.blueGrey[50],
        shape: BoxShape.circle,
      ),
      child: Container(
        width: size,
        height: size,
        child: IconButton(
          icon: Icon(iconButton),
          color: Colors.black,
          onPressed: (){},
        ),
      ),
    );
  }
}
