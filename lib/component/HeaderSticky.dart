import 'package:flutter/material.dart';
import 'package:originalpalv2/Consts/MyColors.dart';

class HeaderSticky extends StatefulWidget {
  var text;
  var index;

  @override
  _HeaderStickyState createState() => _HeaderStickyState();
  HeaderSticky({this.index,this.text});
}

class _HeaderStickyState extends State<HeaderSticky> {
  @override
  Widget build(BuildContext context) {
    return RotatedBox(
      quarterTurns: 3,
      child: Container(
          padding: EdgeInsets.only(
              left: 8, right: 8, top: 4, bottom: 4),
          color:
          widget.index == 0 ? Colors.transparent : MyColor.TEXT_COLOR,
          margin: EdgeInsets.only(top: 10, right: 40),
          child: Text(
            widget.index == 0 ? "" : widget.text,
            style: TextStyle(
                letterSpacing: 5,
                color: widget.index == 0
                    ? Colors.transparent
                    : MyColor.MAIN_COLOR),
          )),
    );
  }
}
