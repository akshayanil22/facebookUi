import 'package:flutter/material.dart';

class ProfileImage extends StatelessWidget {

  final String image;
  final bool isOnline;

  ProfileImage({required this.image,this.isOnline=true});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          margin: EdgeInsets.only(right: 10),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(100),
            child: Image.asset(image,width: 50,height: 50,fit: BoxFit.cover),
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
