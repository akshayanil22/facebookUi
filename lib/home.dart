import 'package:facebook_ui/sections/header_button_section.dart';
import 'package:facebook_ui/sections/room_sections.dart';
import 'package:facebook_ui/sections/status_section.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
          children: [
            StatusSection(),
            Divider(
              thickness: 1,
            ),
            HeaderButtonSection(),
            Divider(
              thickness: 10,
            ),
            RoomSections(),
          ],
        );
  }
}
