import 'package:flutter/material.dart';
import 'package:originalpalv2/Consts/MyColors.dart';
import 'package:originalpalv2/bloc/States/MainPageViewState.dart';
import 'package:provider/provider.dart';

class RowSearchListComplex extends StatefulWidget {
  @override
  _RowSearchListComplexState createState() => _RowSearchListComplexState();
}

class _RowSearchListComplexState extends State<RowSearchListComplex> {
  ScrollController _controller;
  String message = "";
  bool state=false;
  _scrollListener() {
    if (_controller.offset >= _controller.position.maxScrollExtent &&
        !_controller.position.outOfRange) {
      setState(() {
        message = "reach the bottom";
        print("bottom"+message);
        state=true;
      });
    }
    if (_controller.offset <= _controller.position.minScrollExtent &&
        !_controller.position.outOfRange) {
      setState(() {
        message = "reach the top";
        print("top"+message);
        state=true;
      });
    }
  }
  @override
  void initState() {
    _controller = ScrollController();
    _controller.addListener(_scrollListener);

    super.initState();
  }
  @override
  Widget build(BuildContext context) {

    return Material(
        child: Container(
          decoration: BoxDecoration(
              border: Border(
                left: BorderSide(color: MyColor.TEXT_COLOR_GREY,width: 1),
                bottom: BorderSide(color: MyColor.TEXT_COLOR_GREY,width: 1),
                right: BorderSide(color:MyColor.TEXT_COLOR_GREY,width: 1),
              )
          ),
          alignment: Alignment.centerLeft,
          height: 100,
          width: double.infinity,


            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 5,
          physics: state==true?NeverScrollableScrollPhysics():AlwaysScrollableScrollPhysics(),
              controller: _controller,
              itemBuilder:(context, index) {
                return _items(index);
              } ,

          ),
        ));
  }
  Widget _items(int index) {

    if (index == 0) {
      return InkWell(
        onTap: (){
          _onClick();
        },
        child: Container(
          width: 100,
          alignment:Alignment.center,
          child: Text("ccc $index"),
        ),
      );
    } else if (index == 4) {
      return InkWell(
        onTap: (){
          _onClick();
        },
        child: Container(
          width: 100,
          alignment:Alignment.center,
          child: Text("aaa $index"),
        ),
      );
    } else {
      return Container(
          width: 100,
          child: Container(
            decoration: BoxDecoration(
              color: Colors.transparent,
              image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage("https://sneakers-magazine.com/wp-content/uploads/2019/04/adidas-nite-jogger-story-2019-mood-4.jpg"),
              ),
            ),
          )
      );
    }
  }

  void _onClick() {

    var cs = Provider.of<MainPageViewState>(context,listen: false);
    cs.setIndexMainPageView(2);
  }

  _physics() {
    if( _controller.offset <= _controller.position.minScrollExtent &&
        !_controller.position.outOfRange || _controller.offset >= _controller.position.maxScrollExtent &&
        !_controller.position.outOfRange){
      return NeverScrollableScrollPhysics;
    }else {
      return AlwaysScrollableScrollPhysics;
    }
  }
}
