import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:originalpalv2/component/DetailsProduct.dart';
import 'package:originalpalv2/utils/AppConfig.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class DetailsProductPage extends StatefulWidget {
  @override
  _DetailsProductPageState createState() => _DetailsProductPageState();
}

class _DetailsProductPageState extends State<DetailsProductPage> {

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
                DetailsProduct(hasIndicator: true,),
                InkWell(
                  onTap: () {
                    print("asdsa");
                    setState(() {

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
