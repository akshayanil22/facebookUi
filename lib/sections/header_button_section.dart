import 'package:flutter/material.dart';

class HeaderButtonSection extends StatelessWidget {
  HeaderButtonSection({Key? key}) : super(key: key);

  final verticalDivider = VerticalDivider(thickness: 1, color: Colors.grey,);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          TextButton.icon(
            onPressed: () {},
            icon: Icon(
              Icons.video_call,
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
              Icons.video_call,
              color: Colors.purple,
            ),
            label: Text(
              'Room',
              style: TextStyle(color: Colors.black),
            ),
          ),
        ],
      ),
    );
  }
}
