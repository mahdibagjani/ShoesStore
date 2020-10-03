import 'package:flutter/material.dart';
import 'package:originalpalv2/component/Search/TabBarList.dart';

class MenList extends StatefulWidget {
  var controller;

  @override
  _MenListState createState() => _MenListState();

  MenList({this.controller});
}

class _MenListState extends State<MenList>with AutomaticKeepAliveClientMixin<MenList> {
  @override
  Widget build(BuildContext context) {
   return TabBarList();
  }

  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;
}
