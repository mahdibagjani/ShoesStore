import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RowMainListSliderIndicator extends StatefulWidget {
  var i;

  RowMainListSliderIndicator({this.i});

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
          width: MediaQuery.of(context).size.width,
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
                        'NITE JOGGER' + widget.i.toString(),
                        style: TextStyle(
                            fontStyle: FontStyle.italic,
                            fontWeight: FontWeight.w600,
                            fontSize: 30),
                      )),
                  Container(
                      padding: EdgeInsets.only(left: 60, right: 10, bottom: 15),
                      child: Text(
                        "",
                        style: TextStyle(
                            fontStyle: FontStyle.italic,
                            fontWeight: FontWeight.w600,
                            fontSize: 18),
                      )),
                  Stack(
                    children: [
                      Container(
                        color: Colors.blue,
                        height: MediaQuery.of(context).size.width,
                        width: MediaQuery.of(context).size.width,
                        child: PageView(
                          onPageChanged: (value) => {
                            setState(() {
                              mIndex = value + 1;
                              print(value);
                            })
                          },
                          controller: controller,
                          children: List.generate(
                            6,
                            (index) => Container(
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: NetworkImage(
                                      "https://brand.assets.adidas.com/image/upload/f_auto,q_auto,fl_lossy/nlNL/Images/originals_ss19_nitejogger_drop3_clp_glass_emailsignup_tablet_tcm204-340874.jpg"),
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
                            color: Colors.black,
                            child: Text(
                              mIndex.toString() + "/6",
                              style: TextStyle(
                                  letterSpacing: 5,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600),
                            ),
                          )),
                    ],
                  ),
                  Container(
                    padding: EdgeInsets.only(
                        left: 60, right: 30, top: 20, bottom: 20),
                    child: Text(
                        "I'm open for collaborations. I can made for you great web designs, portfolios, landing pages and much others at good price."),
                  ),
                  Container(
                    color: Colors.black,
                    width: MediaQuery.of(context).size.width,
                    margin: EdgeInsets.only(left: 60, right: 40),
                    padding: EdgeInsets.only(left: 16, top: 12, bottom: 12),
                    child: Text(
                      "EXPLORE MORE -->",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 20),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  )
                ],
              ),
              // RotatedBox(
              //   quarterTurns: 3,
              //   child: Container(
              //       padding:
              //           EdgeInsets.only(left: 8, right: 8, top: 4, bottom: 4),
              //       color: Color(0xfff9FBE7),
              //       margin: EdgeInsets.only(top: 20, right: 50),
              //       child: const Text(
              //         'Hello World!',
              //         style: TextStyle(letterSpacing: 5),
              //       )),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
