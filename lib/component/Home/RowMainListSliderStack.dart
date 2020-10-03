import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:originalpalv2/Consts/MyColors.dart';
import 'package:originalpalv2/component/Button/BlackButton.dart';
import 'package:originalpalv2/utils/AppConfig.dart';


class RowMainListSliderStack extends StatefulWidget {
  String text;
  String title;
  String subTitle;
  List<String> buttonTextList;
  List<String> images;
  List<String> imagesTextList;

  RowMainListSliderStack(
      {@required this.title,
      @required this.subTitle,
      @required this.text,
      @required this.buttonTextList,
      @required this.images,
      @required this.imagesTextList});

  @override
  _RowMainListSliderStackState createState() => _RowMainListSliderStackState();
}

class _RowMainListSliderStackState extends State<RowMainListSliderStack> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.only(left: 30),
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
                    child: Swiper(
                      itemCount: widget.images.length,
                      itemWidth: 300,
                      layout: SwiperLayout.STACK,
                      itemBuilder: (context, index) {
                        return Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                                width: 1.5, color: MyColor.TEXT_COLOR),
                          ),
                          child: Stack(
                              alignment: Alignment.bottomCenter,
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      fit: BoxFit.fill,
                                      image: NetworkImage(widget.images[index]),
                                    ),
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.all(20),
                                  alignment: Alignment.topCenter,
                                  height: AppConfig.screenWidth / 3,
                                  color: Colors.black,
                                  child: Text(
                                    widget.imagesTextList[index],
                                    style: TextStyle(
                                        fontWeight: FontWeight.w900,
                                        fontSize: 24,
                                        color: Colors.white),
                                  ),
                                )
                              ]),
                        );
                      },
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(
                        left: 60, right: 30, top: 20, bottom: 20),
                    child: Text(widget.text),
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
