import 'package:facebook_ui/widgets/profile_image.dart';
import 'package:flutter/material.dart';

class StoriesWidgets extends StatelessWidget {
  final String image;
  final String backgroundImage;
  final String text;

  StoriesWidgets({required this.backgroundImage,required this.image,required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topLeft,
      padding: EdgeInsets.symmetric(vertical: 10,horizontal: 10),
      margin: const EdgeInsets.symmetric(vertical: 10,horizontal: 5),
      width: 120,
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage('assets/$backgroundImage'),
          fit: BoxFit.cover,
        ),
        color: Colors.grey,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ProfileImage(image: 'assets/$image',isOnline: false),
          Text(text,style: TextStyle(color: Colors.white),),
        ],
      ),
    );
  }
}
