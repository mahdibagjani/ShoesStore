import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:originalpalv2/Consts/MyColors.dart';
import 'package:originalpalv2/utils/AppConfig.dart';

class RowListOfProduct extends StatefulWidget {
  @override
  _RowListOfProductState createState() => _RowListOfProductState();
}

class _RowListOfProductState extends State<RowListOfProduct> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
         //color: MyColor.BODY_COLOR,

          width: AppConfig.screenWidth,
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.all(2),
                child: Stack(alignment: Alignment.topRight, children: [
                  Container(
                    height: AppConfig.screenWidth / 2,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.fill,
                        image: NetworkImage(
                            "https://brand.assets.adidas.com/image/upload/f_auto,q_auto,fl_lossy/nlNL/Images/originals_ss19_nitejogger_drop3_clp_glass_emailsignup_tablet_tcm204-340874.jpg"),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(8),
                    height: 24,
                    width: 24,
                    child: Icon(
                      Icons.favorite_border,
                      color: Colors.red,
                    ),
                  ),
                ]),
              ),

                  Container(
                    margin: EdgeInsets.all(2),
                   color: MyColor.BODY_COLOR,
                    width: AppConfig.screenWidth/2,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                      Container(
                        padding: EdgeInsets.only(top: 6,bottom: 6,left: 4,right: 4),
                        margin: EdgeInsets.all(2),
                        color: MyColor.TAG_COLOR,
                        child: Text("NEW"),
                      ),
                      Container(
                        margin: EdgeInsets.all(2),
                        padding: EdgeInsets.only(top: 6,bottom: 6,left: 4,right: 4),
                        color: MyColor.TAG_COLOR,
                        child: Text("\$ 159.95"),
                      ),
                      Container(
                        margin: EdgeInsets.all(2),
                        child: Text("ULTRABOOST 20 SHOES"),
                      ),
                      Container(
                        margin: EdgeInsets.only(right: 6,top: 10),
                        child: Row(

                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                                 children: [
                                   Icon(Icons.apps,color: Colors.red,),
                                   Text("+24"),
                                 ],),
                            Text("مناسب برای آقایان و بانوان",style:TextStyle(
                                fontSize: AppConfig.devicePixel>=2?13:10
                            )),
                          ],
                        )
                      ),
                      ],
                    ),
                  ),

            ],
          )),
    );
  }
}
