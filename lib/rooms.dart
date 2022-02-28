import 'package:facebook_ui/widgets/reels_start_end_widgets.dart';
import 'package:facebook_ui/widgets/rooms_widgets.dart';
import 'package:flutter/material.dart';

class Rooms extends StatelessWidget {
  const Rooms({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.horizontal,
      children: [
        ReelsStartEndWidgets(isStart: true,isReels: false,),
        RoomsWidgets(image: 'dq.jpg',name: 'Dulquer\nSalman'),
        RoomsWidgets(image: 'Mammootty.jfif',name: 'Mammootty'),
        RoomsWidgets(image: 'mohanlal.jfif',name: 'Mohanlal'),
        RoomsWidgets(image: 'asifali.jfif',name: 'Asif Ali'),
        RoomsWidgets(image: 'nivin.jfif',name: 'Nivin\nPauly'),
      ],
    );
  }
}


