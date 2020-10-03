import 'package:flutter/material.dart';
import 'RowSearchListComplex.dart';
import 'RowSearchListSimple.dart';

class TabBarList extends StatefulWidget {
  @override
  _TabBArListState createState() => _TabBArListState();
}

class _TabBArListState extends State<TabBarList> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        child: ListView.builder(
          itemCount: 10,
          shrinkWrap: true,
          itemBuilder: (context, index) {
            if(index>=0&&index<=4){
              return RowSearchListSimple();
            }else {
              return RowSearchListComplex();
            }
          },
        ),
      ),
    );
  }
}
