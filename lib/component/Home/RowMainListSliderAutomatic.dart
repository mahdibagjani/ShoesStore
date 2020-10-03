import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:originalpalv2/component/Button/BlackButton.dart';
import 'package:originalpalv2/utils/AppConfig.dart';
import 'package:visibility_detector/visibility_detector.dart';


class RowMainListSliderAutomatic extends StatefulWidget {
  String text;
  String title;
  String subTitle;
  List<String> buttonTextList;
  List<String> images;

  RowMainListSliderAutomatic(
      {@required this.title,
      @required this.subTitle,
      @required this.text,
      @required this.buttonTextList,
      @required this.images});

  @override
  _RowMainListSliderAutomaticState createState() =>
      _RowMainListSliderAutomaticState();
}

class _RowMainListSliderAutomaticState
    extends State<RowMainListSliderAutomatic> {
  final controller = PageController(viewportFraction: 1);
  var mIndex = 0;
  var isVisible = true;

  Timer t;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    // t.cancel();
  }

  @override
  Widget build(BuildContext context) {
    return VisibilityDetector(
      key: Key("unique key"),
      onVisibilityChanged: (VisibilityInfo info) {
        debugPrint("${info.visibleFraction} of my widget is visible");

        if (info.visibleFraction != 0.0 && isVisible == true) {
          _timer();
          isVisible = false;
        } else if (info.visibleFraction < 0.25) {
          print("cancel");
          t.cancel();
          isVisible = true;
        }
      },
      child: Material(
        child: SingleChildScrollView(
          child: Container(
            width: AppConfig.screenWidth,
            child: Stack(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 40,
                    ),
                    Container(
                        padding:
                            EdgeInsets.only(left: 60, right: 10, bottom: 15),
                        child: Text(
                         widget.title,
                          style: TextStyle(
                              fontStyle: FontStyle.italic,
                              fontWeight: FontWeight.w600,
                              fontSize: 30),
                        )),
                    Container(
                        padding:
                            EdgeInsets.only(left: 60, right: 10, bottom: 15),
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
                          decoration: BoxDecoration(
                            color: Colors.transparent,
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: NetworkImage(widget.images[0]),
                            ),
                          ),
                          height: AppConfig.screenWidth,
                          width: AppConfig.screenWidth,
                          child: PageView.builder(
                              physics:new NeverScrollableScrollPhysics(),
                            onPageChanged: (value) => {
                              setState(() {
                                mIndex = value;
                              })
                            },
                            controller: controller,
                            itemCount: widget.images.length,
                            itemBuilder: (context, index) {
                              return Container(
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: NetworkImage(widget.images[index]),
                                  ),
                                ),
                              );
                            },
                          ),
                        ),
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
      ),
    );
  }

  void _timer() {
    const oneSec = const Duration(milliseconds: 800);
    t = new Timer.periodic(
        oneSec,
        (Timer t) => {
              controller.jumpToPage(mIndex),
              mIndex++,
              print(mIndex),
              if (mIndex == widget.images.length)
                {
                  mIndex = 0
                  //t.cancel()
                }
            });
  }
}
