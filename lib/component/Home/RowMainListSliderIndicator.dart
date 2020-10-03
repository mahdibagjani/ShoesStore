import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:originalpalv2/Consts/MyColors.dart';
import 'package:originalpalv2/component/Button/BlackButton.dart';
import 'package:originalpalv2/utils/AppConfig.dart';


class RowMainListSliderIndicator extends StatefulWidget {

  String text;
  String title;
  String subTitle;
  List<String> buttonTextList;
  List<String> images;
  RowMainListSliderIndicator({@required this.title,@required this.subTitle,@required this.text,@required this.buttonTextList,@required this.images});

  @override
  _RowMainListSliderIndicatorState createState() =>
      _RowMainListSliderIndicatorState();
}

class _RowMainListSliderIndicatorState
    extends State<RowMainListSliderIndicator> {
  var mIndex = 1;
  final controller = PageController(viewportFraction: 1);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: SingleChildScrollView(
        child: Container(
          width:AppConfig.screenWidth,
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
                        widget.title.toString(),
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
                  Stack(
                    children: [
                      Container(
                        color: Colors.blue,
                        height: AppConfig.screenWidth,
                        width: AppConfig.screenWidth,
                        child: PageView(
                          onPageChanged: (value) => {
                            setState(() {
                              mIndex = value + 1;
                              print(value);
                            })
                          },
                          controller: controller,
                          children: List.generate(
                            widget.images.length,
                            (index) => Container(
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: NetworkImage(
                                      widget.images[index]),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Container(
                          alignment: Alignment.topRight,
                          margin: EdgeInsets.only(top: 20),
                          child: Container(
                            padding: EdgeInsets.only(
                                left: 8, top: 4, bottom: 4, right: 8),
                            color: MyColor.MAIN_COLOR,
                            child: Text(
                              mIndex.toString() + "/${widget.images.length}",
                              style: TextStyle(
                                  letterSpacing: 5,
                                  color: MyColor.TEXT_COLOR,
                                  fontWeight: FontWeight.w600),
                            ),
                          )),
                    ],
                  ),
                  Container(
                    padding: EdgeInsets.only(
                        left: 60, right: 30, top: 20, bottom: 20),
                    child: Text(
                        widget.text),
                  ),
                  for (var i = 0; i < widget.buttonTextList.length; i++)

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
