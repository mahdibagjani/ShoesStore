import 'package:flutter/material.dart';
import 'package:originalpalv2/component/Search/TabBarList.dart';

class WomenList extends StatefulWidget {
  var controller;

  @override
  _WomenListState createState() => _WomenListState();

  WomenList({this.controller});
}

class _WomenListState extends State<WomenList>with AutomaticKeepAliveClientMixin<WomenList> {
  @override
  Widget build(BuildContext context) {
   return TabBarList();
  }

  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;
}
