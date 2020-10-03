import 'package:flutter/material.dart';
import 'package:originalpalv2/Consts/MyColors.dart';
import 'package:originalpalv2/component/Button/TextWithImageButton.dart';
import 'package:originalpalv2/component/MyAppBar.dart';
import 'package:originalpalv2/utils/AppConfig.dart';

class ChildSheetList extends StatefulWidget {
  @override
  _ChildSheetListState createState() => _ChildSheetListState();
  String title;
  final Function() onClick;
  List<Widget> widgets;
  ChildSheetList({@required this.title,@required this.widgets,this.onClick});
}

class _ChildSheetListState extends State<ChildSheetList> {
  @override
  Widget build(BuildContext context) {
    return Material(
        child: Padding(

          padding: EdgeInsets.all(10),
          child: Container(
      child: SingleChildScrollView(
          child: Column(
            children: [
              MyAppBar(onClick: (){
                Navigator.of(context).pop();
                widget.onClick();
              },
                title: widget.title,
              ),
              SingleChildScrollView(
                child: Column(
                  children: [
                      for(int i=0;i<widget.widgets.length;i++)
                        InkWell(
                          onTap: (){
                            //
                          },
                          child: Container(
                            child: Padding(
                                padding: EdgeInsets.only(top: 12,bottom:12),
                                child: widget.widgets[i]),
                            decoration: BoxDecoration(
                                border: Border(
                                  bottom: BorderSide(
                                      width: 1, color: MyColor.TEXT_COLOR_GREY_LIGHT),
                                )),
                            width: AppConfig.screenWidth,
                          ),
                        ),
                  ],
                ),
              ),
              TextWithImageButton(text: "VIEW ITEMS",
              icon: Icons.arrow_back,),
            ],
          ),
      ),
    ),
        ));
  }
}
