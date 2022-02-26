import 'package:facebook_ui/widgets/profile_image.dart';
import 'package:flutter/material.dart';

class StatusSection extends StatelessWidget {
  const StatusSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: ProfileImage(image: 'assets/dq.jpg',isOnline: false,),
      title: Container(
        height:50,
        child: OutlinedButton(
          child: Align(
              alignment: Alignment.centerLeft,
              child: Text('Write something here...\nഎന്തെങ്കിലും എഴുതൂ...',style: TextStyle(
                color: Colors.black,fontWeight: FontWeight.w400
              ),)),
          onPressed: (){},
          style: OutlinedButton.styleFrom(
            shape: StadiumBorder(),
          ),
        ),
      ),
      trailing: Icon(Icons.photo,color: Colors.green,),
    );
  }
}
