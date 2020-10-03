import 'package:flutter/material.dart';
import 'package:originalpalv2/Consts/MyColors.dart';
import 'package:originalpalv2/utils/AppConfig.dart';

class BlackButton extends StatefulWidget {
  var text;
  var color;
  @override
  _BlackButtonState createState() => _BlackButtonState();
  BlackButton({@required this.text,this.color = MyColor.MAIN_COLOR});
}

class _BlackButtonState extends State<BlackButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color:widget.color,
      width: AppConfig.screenWidth,
      padding: EdgeInsets.only(left: 16, top: 12, bottom: 12),
      child: Text(
        widget.text,
        style: TextStyle(
            fontWeight: FontWeight.bold,
            color: MyColor.TEXT_COLOR,
            fontSize: 16),
      ),
    );
  }
}
