import 'package:flutter/material.dart';

class ButtonList extends StatelessWidget {
  const ButtonList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          ButtonInProfile(name: 'Profile',icon: Icons.photo,),
          ButtonInProfile(name: 'Avatars',icon: Icons.person,),
          ButtonInProfile(name: 'Life events',icon: Icons.star,),
          ButtonInProfile(name: 'Music',icon: Icons.music_note_sharp,),
          ButtonInProfile(name: 'Did you know',icon: Icons.cloud,),
        ],
      ),
    );
  }
}

class ButtonInProfile extends StatelessWidget {


  final IconData icon;
  final String name;

  ButtonInProfile({required this.name,required this.icon});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 10,top: 10,bottom: 10),
      child: ElevatedButton.icon(
          style: ElevatedButton.styleFrom(
            primary: Colors.blueGrey[50],
            onPrimary: Colors.black,
            elevation: 0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20)
            )
          ),
          onPressed: (){}, icon: Icon(icon,size: 20,), label: Text(name)),
    );
  }
}
