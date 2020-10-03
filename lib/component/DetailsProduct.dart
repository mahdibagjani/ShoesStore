import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:originalpalv2/Consts/MyColors.dart';
import 'package:originalpalv2/component/Button/TextWithImageButton.dart';
import 'package:originalpalv2/utils/AppConfig.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class DetailsProduct extends StatefulWidget {
  bool hasIndicator;
  @override
  _DetailsProductState createState() => _DetailsProductState();
  DetailsProduct({@required this.hasIndicator});
}

class _DetailsProductState extends State<DetailsProduct> {

  final controller = PageController(viewportFraction: 1);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Container(
            height: AppConfig.screenWidth,
            // padding: EdgeInsets.only(left: 30, bottom: 30),
            width: AppConfig.screenWidth,
            child: PageView(
              onPageChanged: (value) => {print(value)},
              controller: controller,
              children: List.generate(
                6,
                    (index) => Container(
                  decoration: BoxDecoration(
                    color: Colors.red,
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                          "https://brand.assets.adidas.com/image/upload/f_auto,q_auto,fl_lossy/nlNL/Images/originals_ss19_nitejogger_drop3_clp_glass_emailsignup_tablet_tcm204-340874.jpg"),
                    ),
                  ),
                ),
              ),
            ),
          ),widget.hasIndicator==true?  Container(
            width: AppConfig.screenWidth,
            margin: EdgeInsets.only(top: 20, bottom: 20),
            padding: EdgeInsets.only(left: 30),
            child: SmoothPageIndicator(
              controller: controller,
              count: 6,
              effect: SlideEffect(
                  spacing: 8.0,
                  radius: 20,
                  dotWidth: 30.0,
                  dotHeight: 3.0,
                  strokeWidth: 1.5,
                  dotColor: Colors.grey,
                  paintStyle: PaintingStyle.stroke,
                  activeDotColor: Color(0xff6ea292)),
            ),
          ):Container(),
          Container(
            // margin: EdgeInsets.only(left: 30, top: 30, bottom: 30),
            height: 60,
            margin: EdgeInsets.only(left: 30),
            width: AppConfig.screenWidth,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 6,
              itemBuilder: (context, index) {

                return InkWell(
                  onTap: () {
                    setState(() {
                      controller.jumpToPage(index);
                      print(controller.position);
                    });
                  },
                  child: Container(
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.contain,
                        image: NetworkImage(
                            "https://originalpal.com/panel/products/September2020/nsZtmkJFyAep7fzBUtHA.jpg"),
                      ),
                    ),
                  ),
                );

              },
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            width: AppConfig.screenWidth,
            margin: EdgeInsets.only(left: 30, right: 30),
            child: Text(
              "THU, 1 OCT, 01:30 GMT +3:30",
              style: TextStyle(
                  fontWeight: FontWeight.bold, fontSize: 12),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            width: AppConfig.screenWidth,
            margin: EdgeInsets.only(left: 30, right: 30),
            child: Text(
              "NITE JOGGER SHOES",
              style: TextStyle(
                  fontWeight: FontWeight.bold, fontSize: 20),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            width: AppConfig.screenWidth,
            margin: EdgeInsets.only(left: 30),
            child: Text(
              "ORIGINALS",
              style: TextStyle(fontSize: 12),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            width: AppConfig.screenWidth,
            margin: EdgeInsets.only(left: 30),
            child: Text(
              '\$130.00',
              style: TextStyle(fontSize: 12),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            margin: EdgeInsets.only(left: 30, right: 30),
            width: AppConfig.screenWidth,
            child: TextWithImageButton(text: "NOTIFY ME",color: MyColor.GREEN_BUTTON_COLOR,),
          ),
          SizedBox(
            height: 30,
          ),
        ],
      ),
    );
  }
}
