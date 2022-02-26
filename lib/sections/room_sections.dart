import 'package:facebook_ui/widgets/profile_image.dart';
import 'package:flutter/material.dart';

class RoomSections extends StatelessWidget {
  const RoomSections({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: OutlinedButton.icon(
              style: OutlinedButton.styleFrom(
                shape: StadiumBorder(),
              ),
              onPressed: () {},
              icon: Icon(
                Icons.video_call,
                color: Colors.purple,
              ),
              label: Text('Create \n Room'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                ProfileImage(image: 'assets/dq.jpg'),
                ProfileImage(image: 'assets/Mammootty.jfif'),
                ProfileImage(image: 'assets/asifali.jfif'),
                ProfileImage(image: 'assets/mohanlal.jfif'),
                ProfileImage(image: 'assets/prithwiraj.jfif'),
                ProfileImage(image: 'assets/nivin.jfif'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
