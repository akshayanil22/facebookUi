import 'package:flutter/material.dart';

class PeopleYouMayKnowWidget extends StatelessWidget {
  final String image;
  final String name;
  final String friendCount;

  PeopleYouMayKnowWidget({required this.image,required this.name,required this.friendCount});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 330,
      width: 250,
      clipBehavior: Clip.hardEdge,
      margin: const EdgeInsets.symmetric(horizontal: 5),
      decoration: BoxDecoration(
        color: Colors.blueGrey[50],
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Colors.grey)
      ),
      child: Column(
        children: [
          Expanded(
              child: Container(
                width: 250,
                child: Image.asset(
                  image,
                  fit: BoxFit.cover,
                ),
              ),
              flex: 7),
          SizedBox(width: 5,),
          Expanded(
            flex: 3,
            child: Container(
                padding: EdgeInsets.all(10),
                // color: Colors.red,
                width: double.infinity,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      children: [
                        Text(name),
                        Text('$friendCount mutual friends',style: TextStyle(fontSize: 10,color: Colors.grey),)
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        SizedBox(
                            width: 130,
                            child: ElevatedButton.icon(onPressed: (){}, icon: Icon(Icons.person_add_alt_1), label: Text('Add Friend'))),
                        SizedBox(width: 90,child: ElevatedButton(onPressed: (){}, child: Text('Remove',style: TextStyle(color: Colors.black),),style: ElevatedButton.styleFrom(primary: Colors.grey[300]),))
                      ],
                    )
                  ],
                )
            ),
          ),
        ],
      ),
    );
  }
}
