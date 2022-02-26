import 'package:facebook_ui/widgets/appbar_icons.dart';
import 'package:flutter/material.dart';
import 'home.dart';

void main()=>runApp(MyApp());

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
            title: Text('facebook',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.blue),),
            actions: [
              AppBarIcons(iconButton: Icons.search),
              AppBarIcons(iconButton: Icons.message),
            ],
            bottom: TabBar(
              tabs: [
                Icon(Icons.home_outlined,color: Colors.black54,),
                Icon(Icons.ondemand_video_outlined,color: Colors.black54,),
                Icon(Icons.storefront_outlined,color: Colors.black54,),
                Icon(Icons.person_pin,color: Colors.black54,),
                Icon(Icons.notifications,color: Colors.black54,),
                Icon(Icons.menu,color: Colors.black54,),
              ],
            ),
          ),
          body: Padding(
            padding: EdgeInsets.only(top: 10),
            child: TabBarView(
              children: [
                Home(),
                Home(),
                Home(),
                Home(),
                Home(),
                Home(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
