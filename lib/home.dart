import 'package:facebook_ui/sections/header_button_section.dart';
import 'package:facebook_ui/sections/post_section.dart';
import 'package:facebook_ui/sections/status_section.dart';
import 'package:facebook_ui/sections/stories_reels_room_section.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
          children: [
            StatusSection(),
            HeaderButtonSection(),
            Divider(
              thickness: 10,
            ),
            StoriesReelsRoomSection(),
            Divider(
              thickness: 10,
            ),
            PostSection(),
          ],
        );
  }
}
