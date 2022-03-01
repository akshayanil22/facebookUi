import 'package:facebook_ui/widgets/profile_image.dart';
import 'package:flutter/material.dart';

class PostWidget extends StatelessWidget {

  final String postImage;
  final String profileImage;
  final String profileName;
  final String comments;
  final String likes;
  final String time;
  final String caption;

  PostWidget({required this.caption,required this.time,required this.profileName,required this.profileImage,required this.postImage,required this.likes,required this.comments});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ListTile(
            leading: ProfileImage(image: profileImage,isOnline: false,blueBorder: false,),
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(profileName,style: TextStyle(fontWeight: FontWeight.bold),),
                Row(
                  children: [
                    Icon(Icons.more_horiz),
                    SizedBox(width: 10,),
                    Icon(Icons.close),
                  ],
                ),
              ],
            ),
            subtitle: Row(
              children: [
                Text(time),
                Icon(Icons.public,size: 15,),
              ],
            ),
          ),
          Text(caption),
          Column(
            children: [
              Image.asset(postImage,),
              Container(
                padding: EdgeInsets.all(5),
                child: Row(
                  children: [
                    Container(
                      width: 16,
                      height: 16,
                      child: Icon(Icons.thumb_up_rounded,size: 12,),
                      decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(100)
                      ),),
                    SizedBox(width: 5,),
                    Text(likes+'K'),
                    Spacer(),
                    Text(comments+'Comments')
                  ],
                ),
              ),
              Divider(
                thickness: 10,
              )
            ],
          ),
        ],
      ),
    );
  }
}
