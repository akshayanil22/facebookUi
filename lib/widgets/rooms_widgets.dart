import 'package:facebook_ui/widgets/profile_image.dart';
import 'package:flutter/material.dart';

class RoomsWidgets extends StatelessWidget {

  final String image;
  final String name;

  RoomsWidgets({required this.image,required this.name});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: 120,
      padding: EdgeInsets.symmetric(vertical: 10,horizontal: 10),
      margin: const EdgeInsets.symmetric(vertical: 10,horizontal: 5),
      decoration: BoxDecoration(
        color: Colors.blueGrey[50],
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ProfileImage(image: 'assets/$image',blueBorder: false,),
          Text(name),
          Container(
            width: double.infinity,
            child: ElevatedButton(onPressed: (){}, child: Icon(Icons.videocam,color: Colors.black,),style: ElevatedButton.styleFrom(
                primary: Colors.blueGrey[100]
            ),),
          )
        ],
      ),
    );
  }
}