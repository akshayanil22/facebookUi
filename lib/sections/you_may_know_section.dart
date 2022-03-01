import 'package:flutter/material.dart';

import '../widgets/people_you_may_know_widget.dart';

class YouMayKnowSection extends StatelessWidget {
  const YouMayKnowSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: (MediaQuery.of(context).size.height) * .6,
      child: Column(
        children: [
          const ListTile(
            leading: Text('People You May Know'),
            trailing: Icon(Icons.more_horiz),
          ),
          Container(
            height: 350,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                PeopleYouMayKnowWidget(image: 'assets/dq.jpg',name: 'Dulquer Salman',friendCount: '24'),
                PeopleYouMayKnowWidget(image: 'assets/nivin.jfif',name: 'Nivin Pauly',friendCount: '12',),
                PeopleYouMayKnowWidget(image: 'assets/prithwiraj.jfif',name: 'Prithwi Raj',friendCount: '32',),
              ],
            ),
          ),
          SizedBox(
              width: double.infinity,
              child: TextButton(onPressed: (){}, child: Text('See all >'),),),
        ],
      ),
    );
  }
}