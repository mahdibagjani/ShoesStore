import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:originalpalv2/bloc/GetOneBrandData.dart';
import 'package:originalpalv2/bloc/States/MainPageViewState.dart';
import 'package:originalpalv2/model/BrandResponseModel.dart';
import 'package:originalpalv2/utils/AppConfig.dart';
import 'package:provider/provider.dart';

class BrandPage extends StatefulWidget {
  @override
  _BrandPageState createState() => _BrandPageState();
}

class _BrandPageState extends State<BrandPage> {
@override
  void initState() {
    // TODO: implement initState
    super.initState();
    //getOneBrandData.fetchAllProduct();
  }
  @override
  Widget build(BuildContext context) {

    var cs = Provider.of<MainPageViewState>(context);
    return Scaffold(

      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        leading: InkWell(
          onTap: (){
           // cs.setIndexMainPageView(0);
          },
          child: Icon(
            Icons.account_balance,
            color: Colors.black,
          ),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 8),
            child: Icon(Icons.print, color: Colors.black),
          )
        ],
      ),
      // body: StreamBuilder(
      //   stream: getOneBrandData.getOneBrandData,
      //   builder: (context,AsyncSnapshot<BrandResponseModel> snapshot){
      //
      //     return  SingleChildScrollView(
      //
      //       child: Material(
      //         color: Colors.white,
      //         child: Padding(
      //           padding: EdgeInsets.all(8.0),
      //           child: Column(
      //             crossAxisAlignment: CrossAxisAlignment.start,
      //             children: [
      //               InkWell(
      //                 onTap: (){
      //                   setState(() {
      //                     print(snapshot.data.brand[0].id);
      //
      //
      //                   });
      //                 },
      //                 child: Container(
      //
      //                   padding: EdgeInsets.only(bottom: 28,left: 12,top: 30),
      //                   child: Text("sad",style: TextStyle(
      //
      //                     fontWeight: FontWeight.bold,
      //                     fontSize: 26,
      //                   ),),
      //                 ),
      //               ),
      //               _shoeList(),
      //               Container(
      //                 padding: EdgeInsets.only(bottom: 28,left: 12,top: 30),
      //                 child: Text('New releases',style: TextStyle(
      //                   fontWeight: FontWeight.bold,
      //                   fontSize: 26,
      //                 ),),
      //               ),
      //               _newReleasesList()
      //             ],
      //           ),
      //         ),
      //       ),
      //     );
      //   },
      // ),
    );
  }

  Widget _shoeList() {
    return Container(
      height: 290,
      width: AppConfig.screenWidth,
      child: ListView.builder(

          scrollDirection: Axis.horizontal,
          itemCount: 3,
          itemBuilder: (context, index) {
            return Material(

                color:Colors.white,child: Container(/*child: ManShoeListCard()*/));
          }),
    );
  }

  _newReleasesList() {
    return Container(
      height: 200,
      width:AppConfig.screenWidth,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 2,
          itemBuilder: (context, index) {
            return Material( color:Colors.white,child: Container(/*child: ManReleasesShoeListCard()*/));
          }),
    );
  }
}
