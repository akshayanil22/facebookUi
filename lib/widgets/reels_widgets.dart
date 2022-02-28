import 'package:flutter/material.dart';

class ReelsWidgets extends StatelessWidget {

  final String image;
  final String likes;

  ReelsWidgets({required this.image,required this.likes});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.bottomLeft,
      width: 120,
      padding: EdgeInsets.symmetric(vertical: 10,horizontal: 10),
      margin: const EdgeInsets.symmetric(vertical: 10,horizontal: 5),
      decoration: BoxDecoration(
        color: Colors.black,
        image: DecorationImage(
          image: AssetImage('assets/$image'),
          fit: BoxFit.cover,
        ),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        children: [
          Icon(Icons.thumb_up,color: Colors.white,size: 15),
          SizedBox(width: 5,),
          Text('$likes',style: TextStyle(color: Colors.white),),
        ],
      ),
    );
  }
}
