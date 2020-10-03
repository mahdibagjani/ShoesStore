import 'package:flutter/material.dart';
import 'package:originalpalv2/component/Button/BlackButton.dart';
import 'package:originalpalv2/utils/AppConfig.dart';



class RowMainListOne extends StatefulWidget {
  String image;
  String text;
  String title;
  String subTitle;
  List<String> buttonTextList;

  @override
  _RowMainListOneState createState() => _RowMainListOneState();

  RowMainListOne({@required this.title,@required this.subTitle,@required this.image,@required this.text,@required this.buttonTextList});
}

class _RowMainListOneState extends State<RowMainListOne> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: SingleChildScrollView(
        child: Container(
          width: AppConfig.screenWidth,
          color: Colors.white,
          child: Stack(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 40,
                  ),
                  Container(
                      padding: EdgeInsets.only(left: 60, right: 10, bottom: 15),
                      child: Text(
                        widget.title,
                        style: TextStyle(
                            fontStyle: FontStyle.italic,
                            fontWeight: FontWeight.w600,
                            fontSize: 30),
                      )),
                  Container(
                      padding: EdgeInsets.only(left: 60, right: 10, bottom: 15),
                      child: Text(
                        widget.subTitle,
                        style: TextStyle(
                            fontStyle: FontStyle.italic,
                            fontWeight: FontWeight.w600,
                            fontSize: 18),
                      )),
                  Container(
                    height: AppConfig.screenWidth,
                    width: AppConfig.screenWidth,
                        child: Container(
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              fit: BoxFit.fill,
                              image: NetworkImage(
                                  widget.image),
                            ),
                          ),
                        ),
                  ),
                  Container(
                    padding:
                        EdgeInsets.only(left: 60, right: 30, top: 20, bottom: 20),
                    child: Text(
                        widget.text),
                  ),
                  for(var i =0;i<widget.buttonTextList.length;i++)

                    Container(
                        margin: EdgeInsets.only(left: 60,right: 30),child: BlackButton(text:" ${widget.buttonTextList[i]}-->")),
                  SizedBox(
                    height: 15,
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
