import 'package:flutter/material.dart';
import 'package:originalpalv2/Consts/MyColors.dart';
import 'package:originalpalv2/utils/AppConfig.dart';

class MyAppBar extends StatefulWidget with PreferredSizeWidget {
  @override
  _MyAppBarState createState() => _MyAppBarState();
  String title;
  Function() onClick;
  @override
  Size preferredSize;

  MyAppBar({@required this.title,this.onClick}) : preferredSize = Size.fromHeight(56.0);
}

class _MyAppBarState extends State<MyAppBar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: InkWell(
        onTap: () {
          var a = AppConfig.blockSizeHorizontal * 20;
          print("height == " +
              AppBar().preferredSize.height.toString() +
              "\n" +
              AppConfig.screenWidth.toString() +
              "\n" +
              a.toString() +
              "\n" +
              AppConfig.devicePixel.toString());
        },
        child: Text(
          widget.title,
          style: TextStyle(
            color: MyColor.MAIN_COLOR,
          ),
        ),
      ),
      backgroundColor: MyColor.BODY_COLOR,
      leading: InkWell(
        onTap: (){
          widget.onClick();
        },
        child: Icon(
          Icons.arrow_back,
          color: MyColor.MAIN_COLOR,
        ),
      ),
      elevation: 0.0,
    );
  }
}
