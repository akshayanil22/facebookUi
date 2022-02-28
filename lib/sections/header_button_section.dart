import 'package:flutter/material.dart';

import '../widgets/header_button_widgets.dart';

class HeaderButtonSection extends StatelessWidget {
  HeaderButtonSection({Key? key}) : super(key: key);

  final verticalDivider = VerticalDivider(thickness: 1, color: Colors.grey,);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10),
      color: Colors.grey[100],
      height: 60,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          HeaderButtonWidgets(buttonIcon: Icons.video_library,buttonName: 'Reel',buttonColor: Colors.pinkAccent),
          HeaderButtonWidgets(buttonIcon: Icons.video_call, buttonName: 'Room',buttonColor: Colors.deepPurpleAccent,),
          HeaderButtonWidgets(buttonIcon: Icons.group, buttonName: 'Group', buttonColor: Colors.blue),
          HeaderButtonWidgets(buttonIcon: Icons.video_call, buttonName: 'Live', buttonColor: Colors.red)
        ],
      ),
    );
  }
}

