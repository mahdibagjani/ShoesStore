import 'package:flutter/material.dart';
import 'package:originalpalv2/Consts/MyColors.dart';

import 'SearchBox.dart';

class MyTabBar extends StatefulWidget {
  List<Tab> tabs;
  List<Widget> pages;
  Function(int) onTap;

  @override
  _MyTabBarState createState() => _MyTabBarState();

  MyTabBar({@required this.tabs, @required this.pages, @required this.onTap});
}

class _MyTabBarState extends State<MyTabBar> {
  @override
  Widget build(BuildContext context) {
    return Material(
        child: Container(
      child: DefaultTabController(
        initialIndex: 0,
        length: widget.tabs.length,
        child: Scaffold(
          appBar: AppBar(
            elevation: 0.0,
            titleSpacing: 0.0,
            title: SearchBox(),
            backgroundColor: MyColor.TEXT_COLOR,
            bottom: TabBar(
              indicatorColor: MyColor.MAIN_COLOR,
              labelColor: MyColor.MAIN_COLOR,
              unselectedLabelColor: MyColor.TEXT_COLOR_GREY,
              onTap: (value) {
                widget.onTap(value);
              },
              tabs: widget.tabs,
            ),
          ),
          body: TabBarView(
            children: widget.pages,
          ),
        ),
      ),
    ));
  }
}
