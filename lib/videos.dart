import 'package:facebook_ui/sections/video_section.dart';
import 'package:facebook_ui/widgets/appbar_icons.dart';
import 'package:flutter/material.dart';

class Videos extends StatefulWidget {
  const Videos({Key? key}) : super(key: key);

  @override
  State<Videos> createState() => _VideosState();
}

class _VideosState extends State<Videos> with SingleTickerProviderStateMixin {
  late TabController _tabController;
  var selectedIndex = 0;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: 6);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Row(
            children: const[
              Text(
                'Watch',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
              ),
              Spacer(),
              AppBarIcons(iconButton: Icons.person),
              SizedBox(
                width: 5,
              ),
              AppBarIcons(
                iconButton: Icons.search,
              ),
            ],
          ),
        ),
        Container(
          height: 30,
          child: TabBar(
          indicator: BoxDecoration(
            color: Colors.blue[100],
            borderRadius: BorderRadius.circular(20),
          ),
              labelColor: Colors.blue[700],
            unselectedLabelColor: Colors.black,
            isScrollable: true,
              controller: _tabController,
              tabs: const[
                Text('For You'),
                Text('Live'),
                Text('Music'),
                Text('Gaming'),
                Text('Following'),
                Text('Saved'),
              ],
              onTap: (int index) {
                setState(() {
                  selectedIndex = index;
                  _tabController.animateTo(index);
                });
              }),
        ),
        const Divider(
          thickness: 4,
        ),
        IndexedStack(
          children: [
            Visibility(
              child: const VideoSection(),
              maintainState: true,
              visible: selectedIndex == 0,
            ),Visibility(
              child: Center(
                child: Text(selectedIndex.toString()),
              ),
              maintainState: true,
              visible: selectedIndex == 1,
            ),Visibility(
              child: Center(
                child: Text(selectedIndex.toString()),
              ),
              maintainState: true,
              visible: selectedIndex == 2,
            ),
            Visibility(
              child: Center(child: Text(selectedIndex.toString())),
              maintainState: true,
              visible: selectedIndex == 3,
            ),Visibility(
              child: Center(
                child: Text(selectedIndex.toString()),
              ),
              maintainState: true,
              visible: selectedIndex == 4,
            ),Visibility(
              child: Center(
                child: Text(selectedIndex.toString()),
              ),
              maintainState: true,
              visible: selectedIndex == 5,
            ),
          ],
          index: selectedIndex,
        ),
      ],
    );
  }
}
