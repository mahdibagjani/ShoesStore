import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class DetailsProduct extends StatefulWidget {
  @override
  _DetailsProductState createState() => _DetailsProductState();
}

class _DetailsProductState extends State<DetailsProduct> {
  final controller = PageController(viewportFraction: 1);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(
          Icons.arrow_back,
          color: Colors.grey.shade600,
        ),
        elevation: 0.0,
        backgroundColor: Color(0xffECEDEF),
      ),
      backgroundColor: Color(0xffECEDEF),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      height: MediaQuery.of(context).size.width - 50,
                      // padding: EdgeInsets.only(left: 30, bottom: 30),
                      width: MediaQuery.of(context).size.width - 50,
                      child: PageView(
                        onPageChanged: (value) => {print(value)},
                        controller: controller,
                        children: List.generate(
                          6,
                          (index) => Container(
                            height: MediaQuery.of(context).size.width,
                            width: MediaQuery.of(context).size.width,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                fit: BoxFit.contain,
                                image: NetworkImage(
                                    "https://originalpal.com/panel/products/September2020/nsZtmkJFyAep7fzBUtHA.jpg"),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
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
                    ),
                    Container(
                      // margin: EdgeInsets.only(left: 30, top: 30, bottom: 30),
                      height: 60,
                      margin: EdgeInsets.only(left: 30),
                      width: MediaQuery.of(context).size.width,
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
                      width: MediaQuery.of(context).size.width,
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
                      width: MediaQuery.of(context).size.width,
                      margin: EdgeInsets.only(left: 30),
                      child: Text(
                        "ORIGINALS",
                        style: TextStyle(fontSize: 12),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      margin: EdgeInsets.only(left: 30),
                      child: Text(
                        '\$130.00',
                        style: TextStyle(fontSize: 12),
                      ),
                    )
                  ],
                ),
                InkWell(
                  onTap: () {
                    print("asdsa");
                    setState(() {
                      controller.jumpToPage(2);
                    });
                  },
                  child: RotatedBox(
                    quarterTurns: 3,
                    child: Container(
                      margin: EdgeInsets.only(top: 10),
                      padding:
                          EdgeInsets.only(left: 8, right: 8, top: 4, bottom: 4),
                      color: Color(0xffbcd4cd),
                      child: Text(
                        'COMING SOON',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                            letterSpacing: 2),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
