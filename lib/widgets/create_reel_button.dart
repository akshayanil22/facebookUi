import 'package:flutter/material.dart';

import 'add_button_widgets.dart';

class CreateReelButton extends StatelessWidget {

  final IconData icon;
  final Color iconColor;

  CreateReelButton({required this.icon,required this.iconColor});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          alignment: Alignment.center,
          width: 100,
          child: Container(
            clipBehavior: Clip.none,
            width: 60,
            height: 60,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(100)
            ),
            child: Icon(icon,color: iconColor,size: 40),
          ),
        ),
        Positioned(
            bottom: 0,
            right: 15,
            child: AddButtonWidget(size: 25,color: Colors.white,buttonColor: Colors.blue,iconSize: 1,))
      ],
    );
  }
}
