import 'package:flutter/material.dart';
import 'package:originalpalv2/Consts/MyColors.dart';
import 'package:originalpalv2/utils/AppConfig.dart';

class SearchBox extends StatefulWidget {
  @override
  _SearchBoxState createState() => _SearchBoxState();
}

class _SearchBoxState extends State<SearchBox> {
  @override
  Widget build(BuildContext context) {
    AppConfig().init(context);
    return Container(
      decoration: BoxDecoration(
          border: Border.all(width: 2,color: Colors.white),
          boxShadow: [
        BoxShadow(
            color: Colors.black54,
            blurRadius: 7,
            spreadRadius: 0.01,
            offset: Offset(0, 0.5))
      ]),
      margin: EdgeInsets.only(bottom: 8),
      width: AppConfig.screenWidth,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            flex: 1,
            child: Container(

              color: MyColor.TEXT_COLOR,
              height: 48,
              width: 24,
              child: Icon(Icons.search,color: MyColor.MAIN_COLOR,),
            ),
          ),
          Expanded(
            flex: 8,
            child: Container(
              color:MyColor.TEXT_COLOR,
              child: TextField(

                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        width: 1.0,
                        color: MyColor.TEXT_COLOR
                      )
                  ),
                  contentPadding: EdgeInsets.all(2),
                  hintText: "Find Products..",
                ),
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              color: MyColor.TEXT_COLOR,
              height: 48,
              width: 24,
              child: Icon(Icons.camera_alt,color: MyColor.MAIN_COLOR,),
            ),
          ),
        ],
      ),
    );
  }
}
