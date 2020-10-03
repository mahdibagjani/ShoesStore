import 'package:flutter/material.dart';
import 'package:originalpalv2/bloc/States/MainPageViewState.dart';
import 'package:originalpalv2/ui/BrandPage.dart';
import 'package:originalpalv2/utils/AppConfig.dart';
import 'package:provider/provider.dart';

class RowMainListReadmore extends StatefulWidget {
  String text;
  String buttonText;

  @override
  _RowMainListReadmoreState createState() => _RowMainListReadmoreState();
  RowMainListReadmore({@required this.text,@required this.buttonText});
}

class _RowMainListReadmoreState extends State<RowMainListReadmore> {

  @override
  Widget build(BuildContext context) {
    var cs = Provider.of<MainPageViewState>(context);
    return Material(
      child: Wrap(

       children:[
         Container(
           padding: EdgeInsets.all(20),
           width: AppConfig.screenWidth,
           color: Colors.black,
           child: Column(
             crossAxisAlignment: CrossAxisAlignment.start,
             mainAxisAlignment: MainAxisAlignment.center,
             children: [
               Text(widget.text,style: TextStyle(
                 fontSize: 18,
                 color: Colors.white,
               ),),
               SizedBox(height: 20,),
               InkWell(
                 onTap: (){


                   },
                 child: Text(widget.buttonText,style: TextStyle(
                     fontSize: 21,
                     color: Colors.white,
                     fontWeight: FontWeight.bold,
                     decoration:TextDecoration.underline
                 ),),
               ),
             ],
           ),
         ),
       ]

      ),
    );
  }
}
