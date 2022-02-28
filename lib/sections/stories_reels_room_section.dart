import 'package:facebook_ui/stories.dart';
import 'package:flutter/material.dart';

class StoriesReelsRoomSection extends StatefulWidget {
  const StoriesReelsRoomSection({Key? key}) : super(key: key);

  @override
  State<StoriesReelsRoomSection> createState() =>
      _StoriesReelsRoomSectionState();
}

class _StoriesReelsRoomSectionState extends State<StoriesReelsRoomSection>
    with SingleTickerProviderStateMixin {
  static const List<Tab> myTabs = <Tab>[
    Tab(text: 'Stories'),
    Tab(text: 'Reels'),
    Tab(text: 'Rooms'),
  ];

  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: myTabs.length);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Container(
          height: 280,
          // color: Colors.green,
          child: Column(
            children: [
              Container(
                height: 40,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  color: Colors.white,
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.grey,
                      spreadRadius: 1.0,
                      blurRadius: 2.0,
                      offset: Offset(2.0, 2.0), // shadow direction: bottom right
                    ),
                  ],
                ),
                child: TabBar(
                  controller: _tabController,
                  labelColor: Colors.blue,
                  unselectedLabelColor: Colors.grey[700],
                  tabs: myTabs,
                ),
              ),
              Expanded(
                child: TabBarView(controller: _tabController, children: [
                 Stories(),
                  Center(
                    child: Text('Hai'),
                  ),
                  Center(
                    child: Text('Hai'),
                  ),
                ]),
              ),
            ],
          ),
        ));
  }
}
