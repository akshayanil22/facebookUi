import 'package:facebook_ui/widgets/reels_start_end_widgets.dart';
import 'package:facebook_ui/widgets/reels_widgets.dart';
import 'package:flutter/material.dart';

class Reels extends StatelessWidget {
  const Reels({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.horizontal,
      children: [
        ReelsStartEndWidgets(isStart: true,),
        ReelsWidgets(
          image: 'dq.jpg',
          likes: '167K',
        ),
        ReelsWidgets(
          image: 'mohanlal.jfif',
          likes: '150K',
        ),
        ReelsWidgets(
          image: 'asifali.jfif',
          likes: '167K',
        ),
        ReelsWidgets(
          image: 'prithwiraj.jfif',
          likes: '140K',
        ),
        ReelsStartEndWidgets(isStart: false,),
      ],
    );
  }
}
