import 'package:flutter/material.dart';
import '../widgets/post_widgets.dart';

class VideoSection extends StatelessWidget {
  const VideoSection({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: const[
        PostWidget(profileImage: 'assets/dq.jpg',profileName: 'Dulquer Salman',postImage: 'assets/1.jfif',caption: 'Some Captions Here...',likes: '2.7',comments: '49',time: '2h'),
        PostWidget(profileImage: 'assets/mohanlal.jfif',profileName: 'Mohanlal',postImage: 'assets/2.jpg',caption: 'Some Captions Here...',likes: '1.3',comments: '32',time: '1h'),
        PostWidget(profileImage: 'assets/prithwiraj.jfif',profileName: 'Prithwi Raj',postImage: 'assets/3.jpg',caption: 'Some Captions Here...',likes: '1.8',comments: '65',time: '3m'),
        PostWidget(profileImage: 'assets/nivin.jfif',profileName: 'Dulquer Salman',postImage: 'assets/4.jpg',caption: 'Some Captions Here...',likes: '2.1',comments: '109',time: '4h'),
        PostWidget(profileImage: 'assets/asifali.jfif',profileName: 'Dulquer Salman',postImage: 'assets/5.jpg',caption: 'Some Captions Here...',likes: '1.1',comments: '159',time: '10h'),
      ],
    );

  }
}

