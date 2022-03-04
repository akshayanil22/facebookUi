import 'package:facebook_ui/sections/friends_section.dart';
import 'package:facebook_ui/sections/status_section_in_profile.dart';
import 'package:facebook_ui/widgets/appbar_icons.dart';
import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Container(
          padding: EdgeInsets.all(10),
          height: MediaQuery.of(context).size.height * .5,
          // color: Colors.greenAccent,
          width: MediaQuery.of(context).size.width,
          child: Stack(
            children: [
              Container(
                height: (MediaQuery.of(context).size.height * .5) / 2,
                decoration: BoxDecoration(
                    color: Colors.blue,
                    image: DecorationImage(
                        image: AssetImage('assets/1.jfif'), fit: BoxFit.cover),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10))),
                child: AppBarIcons(iconButton: Icons.camera_alt),
                alignment: Alignment.bottomRight,
                padding: EdgeInsets.all(10),
              ),
              Positioned(
                bottom: (MediaQuery.of(context).size.height * .5) / 4,
                left: (MediaQuery.of(context).size.width) / 3.7,
                child: Stack(
                  alignment: Alignment.bottomRight,
                  children: [
                    CircleAvatar(
                      radius: (MediaQuery.of(context).size.width) / 5,
                      backgroundImage: AssetImage('assets/mohanlal.jfif'),
                    ),
                    Positioned(child: AppBarIcons(iconButton: Icons.camera_alt))
                  ],
                ),
              ),
              Positioned(
                  bottom: 0,
                  child: Container(
                    height: (MediaQuery.of(context).size.height * .5) / 4,
                    width: (MediaQuery.of(context).size.width),
                    padding: EdgeInsets.symmetric(vertical: 5),
                    child: Column(
                      children: [
                        Spacer(),
                        Text(
                          'Mohan Lal',
                          style: TextStyle(
                              fontSize: 22, fontWeight: FontWeight.w600),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            ElevatedButton.icon(
                              style: ElevatedButton.styleFrom(
                                  primary: Colors.blue[800]),
                              onPressed: () {},
                              icon: Icon(Icons.add_circle),
                              label: Text('Add to story'),
                            ),
                            ElevatedButton.icon(
                              style: ElevatedButton.styleFrom(
                                  primary: Colors.blueGrey[50],
                                  onPrimary: Colors.black),
                              onPressed: () {},
                              icon: Icon(Icons.edit),
                              label: Text('Edit Profile'),
                            ),
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  primary: Colors.blueGrey[50],
                                  onPrimary: Colors.black),
                              onPressed: () {},
                              child: Icon(Icons.more_horiz),
                            ),
                          ],
                        )
                      ],
                    ),
                  )),
            ],
          ),
        ),
        Divider(
          thickness: 1,
        ),
        Container(
          padding: EdgeInsets.all(10),
          child: Column(
            children: [
              Row(
                children: [
                  Icon(
                    Icons.history_edu,
                    color: Colors.grey,
                  ),
                  Text('Studied BCOM at .........College')
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Icon(
                    Icons.history_edu,
                    color: Colors.grey,
                  ),
                  Text('Went to .........College')
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Icon(
                    Icons.history_edu,
                    color: Colors.grey,
                  ),
                  Text('Went to .........College')
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Icon(
                    Icons.home,
                    color: Colors.grey,
                  ),
                  Text('Lives in .....')
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Icon(
                    Icons.location_pin,
                    color: Colors.grey,
                  ),
                  Text('From .......')
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Icon(
                    Icons.timer,
                    color: Colors.grey,
                  ),
                  Text('Joined June 2013')
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Icon(
                    Icons.workspaces_outline,
                    color: Colors.grey,
                  ),
                  Text('Followed by 53 people')
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Icon(
                    Icons.more_horiz,
                    color: Colors.grey,
                  ),
                  Text('See your About info')
                ],
              ),
              SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(primary: Colors.blue[100]),
                    onPressed: (){}, child: Text('Edit public detailes',style: TextStyle(color: Colors.blue[800]),),)),
            ],
          ),
        ),
        Divider(thickness: 1,),
        FriendsSection(),
        Divider(thickness: 10,),
        StatusSectionInProfile(),
        Divider(thickness: 10,),
      ],
    );
  }
}
