import 'package:facebook_ui/widgets/stories_widgets.dart';
import 'package:flutter/material.dart';

class Stories extends StatelessWidget {
  const Stories({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.horizontal,
      children: [
        Container(
          width: 120,
          clipBehavior: Clip.hardEdge,
          margin: const EdgeInsets.symmetric(vertical: 10,horizontal: 5),
          decoration: BoxDecoration(
            color: Colors.blueGrey[50],
            borderRadius: BorderRadius.circular(20),
          ),
          child: Stack(
            children: [
              Column(
                children: [
                  Expanded(child: Image.asset('assets/mohanlal.jfif',fit: BoxFit.cover,),flex: 3),
                  Expanded(
                    flex: 1,
                    child: Container(
                      margin: const EdgeInsets.only(bottom: 10),
                      alignment: Alignment.bottomCenter,
                      width: double.infinity,
                      child: const Text('Create Story',style: TextStyle(fontWeight: FontWeight.bold),),
                    ),
                  )
                ],
              ),
              Positioned(
                left: 50,
                bottom: 45,
                child: Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(100),
                    border: Border.all(
                      color: Colors.white,
                      width: 2
                    )
                  ),
                  child: Icon(Icons.add,color: Colors.white,),
                ),
              )
            ],
          ),
        ),
        StoriesWidgets(
            backgroundImage: 'Mammootty.jfif',
            image: 'dq.jpg',
            text: 'Dulquer'),
        StoriesWidgets(
            backgroundImage: 'dq.jpg',
            image: 'Mammootty.jfif',
            text: 'Mammootty'),
        StoriesWidgets(
            backgroundImage: 'mohanlal.jfif',
            image: 'asifali.jfif',
            text: 'Asif Ali'),
        StoriesWidgets(
            backgroundImage: 'nivin.jfif',
            image: 'prithwiraj.jfif',
            text: 'Prithwi Raj'),
      ],
    );
  }
}
