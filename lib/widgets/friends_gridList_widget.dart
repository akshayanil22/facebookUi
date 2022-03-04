import 'package:flutter/material.dart';

class FriendsGridListWidget extends StatelessWidget {

  final String image;
  final String name;

  FriendsGridListWidget({required this.image,required this.name});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: 120,
          height: 120,
          decoration: BoxDecoration(
            color: Colors.grey,
            borderRadius: BorderRadius.circular(10),
            image: DecorationImage(
              image: AssetImage(image),fit: BoxFit.cover,
            ),
          ),
        ),
        SizedBox(height: 5,),
        Container(
            width: 100,
            // height: 100,
            child: Text(name,style: TextStyle(fontWeight: FontWeight.bold),))
      ],
    );
  }
}
