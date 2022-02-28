import 'package:flutter/material.dart';

class ProfileImage extends StatelessWidget {

  final String image;
  final bool isOnline;
  final bool blueBorder;

  ProfileImage({required this.image,this.isOnline=true,this.blueBorder=true});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          margin: EdgeInsets.only(right: 10),
          decoration: blueBorder ? BoxDecoration(
            border: Border.all(
              color: Colors.blue,
              width: 2,
            ),
            borderRadius: BorderRadius.circular(100)
          ) : BoxDecoration(),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(100),
            child: Image.asset(image,width: 40,height: 40,fit: BoxFit.cover),
          ),
        ),
        isOnline ? Positioned(
            bottom: 0,
            right: 7,
            child: Container(
          width: 15,
          height: 15,
          decoration: BoxDecoration(
            color: Colors.green,
            shape: BoxShape.circle,
            border: Border.all(
              color: Colors.white,
              width: 2,
            ),
          ),
        ),) : SizedBox(),
      ],
    );
  }
}
