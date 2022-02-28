import 'package:facebook_ui/widgets/appbar_icons.dart';
import 'package:flutter/material.dart';
import 'create_reel_button.dart';

class ReelsStartEndWidgets extends StatelessWidget {
  final bool isStart;

  ReelsStartEndWidgets({required this.isStart});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.bottomLeft,
      width: 120,
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 5),
      decoration: isStart
          ? BoxDecoration(
              gradient: const LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [
                  Colors.pink,
                  Colors.orange,
                ],
              ),
              borderRadius: BorderRadius.circular(20),
            )
          : BoxDecoration(
              border: Border.all(color: Color(0xA3A59FAF)),
              borderRadius: BorderRadius.circular(20),
            ),
      child: Column(
        children: [
          Container(
            height: 50,
          ),
          isStart
              ? CreateReelButton()
              : AppBarIcons(iconButton: Icons.arrow_forward,size: 60),
          Spacer(),
          isStart
              ? Text(
                  'Create reel',
                  style: TextStyle(color: Colors.white),
                )
              : Text(
                  'see more reels\nand short videos',
                  style: TextStyle(fontSize: 12),
                )
        ],
      ),
    );
  }
}
