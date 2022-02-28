import 'package:facebook_ui/widgets/appbar_icons.dart';
import 'package:flutter/material.dart';
import 'create_reel_button.dart';

class ReelsStartEndWidgets extends StatelessWidget {
  final bool isStart;
  final bool isReels;

  ReelsStartEndWidgets({required this.isStart,this.isReels=true});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.bottomLeft,
      width: 120,
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 5),
      decoration: isStart
          ? BoxDecoration(
              gradient:  LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [
                  isReels?Colors.pink:Colors.deepPurpleAccent,
                  isReels?Colors.orange:Colors.deepPurple,
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
              ? CreateReelButton(icon: isReels?Icons.video_library:Icons.video_call,iconColor: isReels?Colors.orange:Colors.deepPurple,)
              : AppBarIcons(iconButton: Icons.arrow_forward,size: 60),
          Spacer(),
          isStart
              ? Text(
                  isReels?'Create reel':'Create Room',
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
