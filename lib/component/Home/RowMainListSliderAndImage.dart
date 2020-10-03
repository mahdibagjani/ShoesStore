import 'package:flutter/material.dart';
import 'package:originalpalv2/component/Button/BlackButton.dart';
import 'package:originalpalv2/utils/AppConfig.dart';


class RowMainListSliderAndImage extends StatefulWidget {
  String image;
  String text;
  String title;
  String subTitle;
  List<String> buttonTextList;
  List<String> images;
  @override
  _RowMainListSliderAndImageState createState() =>
      _RowMainListSliderAndImageState();
  RowMainListSliderAndImage({@required this.title,@required this.subTitle,@required this.image,@required this.text,@required this.buttonTextList,@required this.images});
}

class _RowMainListSliderAndImageState extends State<RowMainListSliderAndImage> {
  @override
  Widget build(BuildContext context) {
    return Material(
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
                height: AppConfig.screenWidth / (2),
                width: AppConfig.screenWidth,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: widget.images.length,
                  itemBuilder: (context, index) {
                    return _rowItem(index);
                  },
                ),
              ),
              Container(
                padding:
                    EdgeInsets.only(left: 60, right: 30, top: 20, bottom: 20),
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
    ));
  }

  Widget _rowItem(index) {
    return Material(
        child: Container(
      width: 200,
      height: 200,
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: NetworkImage(
              widget.images[index]),
        ),
      ),
    ));
  }
}
