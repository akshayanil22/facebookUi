import 'package:flutter/material.dart';

import '../widgets/profile_image.dart';

class StatusSectionInProfile extends StatelessWidget {
  StatusSectionInProfile({Key? key}) : super(key: key);

  final verticalDivider = VerticalDivider(thickness: 1, color: Colors.grey,);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.all(10),
          child: Row(
            children: [
              Text('Posts',style: TextStyle(fontWeight: FontWeight.bold),),
              Spacer(),

              Container(
                padding: EdgeInsets.symmetric(horizontal: 10,vertical: 5),
                color: Colors.blueGrey[100],
                child: Icon(Icons.add_link,size: 20,),
              ),
              SizedBox(width: 10,),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10,vertical: 5),
                color: Colors.blueGrey[100],
                child: Icon(Icons.settings,size: 20,),
              ),
            ],
          ),
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Row(
            children: [
              ProfileImage(image: 'assets/dq.jpg',isOnline: false,blueBorder: false),
              Text("What's on your mind?"),
            ],
          ),
        ),
        Divider(thickness: 1,),
        SizedBox(
          height: 30,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TextButton.icon(
                onPressed: () {},
                icon: Icon(
                  Icons.video_call,
                  size: 20,
                  color: Colors.red,
                ),
                label: Text(
                  'Live',
                  style: TextStyle(color: Colors.black),
                ),
              ),
              verticalDivider,
              TextButton.icon(
                onPressed: () {},
                icon: Icon(
                  Icons.photo,
                  size: 20,
                  color: Colors.green,
                ),
                label: Text(
                  'Photo',
                  style: TextStyle(color: Colors.black),
                ),
              ),
              verticalDivider,
              TextButton.icon(
                onPressed: () {},
                icon: Icon(
                  Icons.flag,
                  size: 20,
                  color: Colors.purple,
                ),
                label: Text(
                  'Live event',
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
