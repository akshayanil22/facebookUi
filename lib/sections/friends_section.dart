import 'package:facebook_ui/widgets/friends_gridList_widget.dart';
import 'package:flutter/material.dart';

class FriendsSection extends StatelessWidget {
  const FriendsSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        children: [
          Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Friends',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
                  Text('278 friends')
                ],
              ),
              Spacer(),
              Text('Find Friends',style: TextStyle(color: Colors.blue[700],fontWeight: FontWeight.w600),)
            ],
          ),
          const SizedBox(height: 10,),
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  FriendsGridListWidget(image: 'assets/dq.jpg',name: 'Dulquer Salman',),
                  FriendsGridListWidget(image: 'assets/nivin.jfif',name: 'Nivin Pauly'),
                  FriendsGridListWidget(image: 'assets/asifali.jfif',name: 'Asif Ali'),
                ],
              ),
              const SizedBox(height: 5,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  FriendsGridListWidget(image: 'assets/Mammootty.jfif',name: 'Mammoottyy',),
                  FriendsGridListWidget(image: 'assets/prithwiraj.jfif',name: 'Prithwi Raj'),
                  FriendsGridListWidget(image: 'assets/1.jfif',name: 'Someone'),
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.blueGrey[100],
                          onPrimary: Colors.black,
                        ),
                        onPressed: (){}, child: Text('See all friends'))),
              )
            ],
          )
        ],
      ),
    );
  }
}
