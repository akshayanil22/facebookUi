import 'package:flutter/material.dart';

class AppBarIcons extends StatelessWidget {
  const AppBarIcons({Key? key,required this.iconButton}) : super(key: key);

  final IconData iconButton;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(5),
      decoration: BoxDecoration(
        color: Colors.grey[400],
        shape: BoxShape.circle,
      ),
      child: IconButton(
        icon: Icon(iconButton),
        color: Colors.black,
        onPressed: (){},
      ),
    );
  }
}
