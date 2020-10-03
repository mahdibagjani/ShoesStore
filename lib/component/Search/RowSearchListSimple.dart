import 'package:flutter/material.dart';
import 'package:originalpalv2/Consts/MyColors.dart';

class RowSearchListSimple extends StatefulWidget {
  @override
  _RowSearchListSimpleState createState() => _RowSearchListSimpleState();
}

class _RowSearchListSimpleState extends State<RowSearchListSimple> {
  @override
  Widget build(BuildContext context) {
    return Material(
        child: Container(
      decoration: BoxDecoration(
          border: Border(
        left: BorderSide(color: MyColor.TEXT_COLOR_GREY, width: 1),
        bottom: BorderSide(color: MyColor.TEXT_COLOR_GREY, width: 1),
        right: BorderSide(color: MyColor.TEXT_COLOR_GREY_LIGHT, width: 1),
      )),
      alignment: Alignment.centerLeft,
      height: 100,
      width: double.infinity,
      padding: EdgeInsets.all(8),
      child: Text(
        "item indsssex",
        style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 20,
            color: MyColor.MAIN_COLOR),
      ),
    ));
  }
}
