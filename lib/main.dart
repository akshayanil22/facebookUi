import 'package:facebook_ui/widgets/appbar_icons.dart';
import 'package:flutter/material.dart';
import 'home.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 6,
      child: MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            elevation: 0,
            backgroundColor: Colors.white,
            title: Text(
              'facebook',
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue[700]),
            ),
            actions: const [
              AppBarIcons(iconButton: Icons.search),
              AppBarIcons(iconButton: Icons.message),
            ],
            bottom: const TabBar(
              labelColor: Colors.blue,
              unselectedLabelColor: Colors.black54,
              tabs: [
                Icon(Icons.home_outlined),
                Icon(Icons.ondemand_video_outlined),
                Icon(Icons.storefront_outlined),
                Icon(Icons.person_pin),
                Icon(Icons.notifications),
                Icon(Icons.menu),
              ],
            ),
          ),
          body: const Padding(
            padding: EdgeInsets.only(top: 10),
            child: TabBarView(
              children: [
                Home(),
                Center(
                  child: Text('Video'),
                ),
                Center(
                  child: Text('Store'),
                ),
                Center(
                  child: Text('Profile'),
                ),
                Center(
                  child: Text('Notification'),
                ),
                Center(
                  child: Text('Menu'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
