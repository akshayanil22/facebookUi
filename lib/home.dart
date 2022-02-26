import 'package:facebook_ui/sections/header_button_section.dart';
import 'package:facebook_ui/sections/room_sections.dart';
import 'package:facebook_ui/sections/status_section.dart';
import 'package:facebook_ui/widgets/appbar_icons.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          title: Text('facebook',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.blue),),
          actions: [
            AppBarIcons(iconButton: Icons.search),
            AppBarIcons(iconButton: Icons.message),
          ],
        ),
        body: ListView(
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
        ),
      ),
    );
  }
}
