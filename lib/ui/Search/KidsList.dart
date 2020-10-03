import 'package:flutter/material.dart';
import 'package:originalpalv2/component/Search/TabBarList.dart';

class KidsList extends StatefulWidget {
  var controller;

  @override
  _KidsListState createState() => _KidsListState();

  KidsList({this.controller});
}

class _KidsListState extends State<KidsList>with AutomaticKeepAliveClientMixin<KidsList> {
  @override
  Widget build(BuildContext context) {
   return TabBarList();
  }

  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;
}
