import 'package:facebook_ui/sections/post_section.dart';
import 'package:facebook_ui/sections/video_section.dart';
import 'package:facebook_ui/widgets/appbar_icons.dart';
import 'package:flutter/material.dart';

class Videos extends StatelessWidget {
  const Videos({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                children: [
                  Text(
                    'Watch',
                    style:
                        TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
                  ),
                  Spacer(),
                  AppBarIcons(iconButton: Icons.person),
                  SizedBox(
                    width: 5,
                  ),
                  AppBarIcons(
                    iconButton: Icons.search,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 35,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  SizedBox(width: 10,),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 2),
                    decoration: BoxDecoration(
                      color: Colors.blue[200],
                      borderRadius: BorderRadius.circular(20)
                    ),
                      child: TextButton(onPressed: () {}, child: Text('For You',style: TextStyle(color: Colors.blue[800]),))),
                  TextButton(onPressed: () {}, child: Text('Live',style: TextStyle(color: Colors.black),),),
                  TextButton(onPressed: () {}, child: Text('Music',style: TextStyle(color: Colors.black),),),
                  TextButton(onPressed: () {}, child: Text('Gaming',style: TextStyle(color: Colors.black),),),
                  TextButton(onPressed: () {}, child: Text('Following',style: TextStyle(color: Colors.black),),),
                  TextButton(onPressed: () {}, child: Text('Saved',style: TextStyle(color: Colors.black),),),
                ],
              ),
            ),
            Divider(thickness: 4,),
          ],
        ),
        VideoSection(),
      ],
    );
  }
}
