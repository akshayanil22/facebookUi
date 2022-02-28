import 'package:flutter/material.dart';

import 'add_button_widgets.dart';

class CreateReelButton extends StatelessWidget {
  const CreateReelButton({
    Key? key,
  }) : super(key: key);

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
            child: Icon(Icons.video_library,color: Colors.pinkAccent,),
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
