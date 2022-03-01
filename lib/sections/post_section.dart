import 'package:facebook_ui/sections/you_may_know_section.dart';
import 'package:flutter/material.dart';

import '../widgets/post_widgets.dart';

class PostSection extends StatelessWidget {
  const PostSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        PostWidget(profileImage: 'assets/dq.jpg',profileName: 'Dulquer Salman',postImage: 'assets/Mammootty.jfif',caption: 'Some Captions Here...',likes: '2.7',comments: '49',time: '2h'),
        YouMayKnowSection(),
        Divider(thickness: 10,),
        PostWidget(profileImage: 'assets/mohanlal.jfif',profileName: 'Mohanlal',postImage: 'assets/nivin.jfif',caption: 'Some Captions Here...',likes: '1.3',comments: '32',time: '1h'),
        PostWidget(profileImage: 'assets/prithwiraj.jfif',profileName: 'Prithwi Raj',postImage: 'assets/asifali.jfif',caption: 'Some Captions Here...',likes: '1.8',comments: '65',time: '3m'),
        PostWidget(profileImage: 'assets/nivin.jfif',profileName: 'Dulquer Salman',postImage: 'assets/mohanlal.jfif',caption: 'Some Captions Here...',likes: '2.1',comments: '109',time: '4h'),
      ],
    );

  }
}

