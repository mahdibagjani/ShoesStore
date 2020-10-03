import 'package:flutter/material.dart';
import 'package:originalpalv2/Consts/MyColors.dart';
import 'package:originalpalv2/utils/AppConfig.dart';

class TextWithImageButton extends StatefulWidget {
  var text;
  var color;
  var icon;
  var textColor;
  final Function() onImageClick;
  @override
  _TextWithImageButtonState createState() => _TextWithImageButtonState();
  TextWithImageButton({@required this.text,this.color=MyColor.MAIN_COLOR,this.icon,this.textColor,this.onImageClick});
}

class _TextWithImageButtonState extends State<TextWithImageButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: widget.color,
      width: AppConfig.screenWidth,
      padding: EdgeInsets.only(left: 16, right: 16, top: 12, bottom: 12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            widget.text,
            style: TextStyle(
                fontWeight: FontWeight.bold,
                color: widget.textColor!=null?widget.textColor:MyColor.TEXT_COLOR,
                letterSpacing: 3,
                fontSize: 16),
          ),
          InkWell(
              onTap: (){
                widget.onImageClick();
              },
              child: Icon(widget.icon!=null?widget.icon:Icons.add,color: widget.textColor!=null?widget.textColor:MyColor.TEXT_COLOR,))
        ],
      ),
    );
  }
}
