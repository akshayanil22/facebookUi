import 'package:facebook_ui/widgets/profile_image.dart';
import 'package:flutter/material.dart';

class StatusSection extends StatelessWidget {
  const StatusSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: ProfileImage(image: 'assets/dq.jpg',isOnline: false,),
      title: const TextField(
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText:  'What\'s on your mind?',
          hintStyle: TextStyle(
            color: Colors.black
          )
        ),
      ),
    );
  }
}
