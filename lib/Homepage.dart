import 'package:flutter/material.dart';
import 'package:kidsapp/firstTab.dart';
// Placement ID
// "2717882621861781_2717886721861371"

import 'colors.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
      TabController controller;
  // flutter tts code

  void initState() {
    super.initState();
    controller = new TabController(length: 2, vsync: this);
  }

  // flutter tts code  --end

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
        gradient2,
        gradient1,
      ], begin: Alignment.bottomLeft, end: Alignment.topRight)),
      child: Scaffold(
          backgroundColor: Colors.transparent,
          body: CustomScrollView(
            slivers: [
              new SliverAppBar(
                pinned: false,
                title: Center(child: new Text("Kids App")),
                expandedHeight: 100,
                backgroundColor: primaryColor,
                bottom: new TabBar(
                  controller: controller,
                  tabs: [
                  new Tab(text: 'Learn'),
                  new Tab(text: 'Coming soon'),
                ]),
              ),
              // SliverList(delegate: new SliverChildBuilderDelegate(
                
              // )
              // )

            ],
          )),
    );
  }
}
