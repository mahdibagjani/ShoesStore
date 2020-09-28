import 'package:flutter/material.dart';
import 'package:originalpalv2/component/Home/CustomBottomNavigationBar.dart';
import 'package:originalpalv2/component/Home/RowMainListOne.dart';
import 'package:originalpalv2/component/Home/RowMainListSliderAutomatic.dart';
import 'package:originalpalv2/component/Home/RowMainListSliderIndicator.dart';
import 'package:originalpalv2/component/Home/RowMainListSliderStack.dart';
import 'file:///C:/Users/Original/AndroidStudioProjects/originalpalv2/lib/component/Home/RowMainListReadmore.dart';
import 'package:originalpalv2/component/Home/RowMainListVideo/VideoPlayerRemote.dart';

import 'package:sticky_infinite_list/sticky_infinite_list.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

final list = List.generate(2, (i) => "item ${i + 1}");

class _HomePageState extends State<HomePage> {
  var count = 2;
  var itt = ["", 1, 2, 5, 1, 3];

  var _selectedItem = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: RefreshIndicator(
            color: Colors.lightBlueAccent,
            child: InfiniteList(
              posChildCount: 6,
              controller: ScrollController(),
              direction: InfiniteListDirection.single,
              builder: (context, index) {
                return InfiniteListItem.overlay(
                    headerStateBuilder: (context, state) {
                  return RotatedBox(
                    quarterTurns: 3,
                    child: Container(
                        padding: EdgeInsets.only(
                            left: 8, right: 8, top: 4, bottom: 4),
                        color:
                            index == 0 ? Colors.transparent : Color(0xfff9FBE7),
                        margin: EdgeInsets.only(top: 10, right: 40),
                        child: Text(
                          index == 0 ? "" : "Hello World" + index.toString(),
                          style: TextStyle(
                              letterSpacing: 5,
                              color: index == 0
                                  ? Colors.transparent
                                  : Colors.black),
                        )),
                  );
                }, contentBuilder: (context) {
                  return Container(
                    child: Column(
                      children: data(index),
                    ),
                  );
                });
              },
            ),
            onRefresh: () {
              print('dsfdddddddddddddddddddd');
            },
          ),
          bottomNavigationBar: CustomBottomNavigationBar(
            iconList: [
              Icons.account_balance,
              Icons.home_filled,
              Icons.support,
              Icons.search,
              Icons.image,
            ],
            defaultSelectedIndex: 0,
            onChange: (value) {
              _selectedItem=value;
              print(_selectedItem);
            },
          )),
    );
  }

  List<Widget> data(int count) {
    List<Widget> item = List();
    for (int i = 0; i <= count; i++) {
      if (i == 3) {
        //todo: adan bejaye i minivisim type==1 ya type=2
        item.clear();
        item.add(RowMainListOne());
      } else if (i == 2) {
        item.clear();
        item.add(RowMainListSliderIndicator(i: i));
      } else if (i == 4) {
        item.clear();
        item.add(RowMainListSliderAutomatic());
      } else if (i == 1) {
        item.clear();
        item.add(VideoPlayerRemote(
            url:
                "https://originalpal.com/panel/products/September2019/8xook64OTYLKY8zSR4Ua.mp4"));
         } else if (i == 5) {
        item.clear();
        item.add(RowMainListSliderStack());
      } else if (i == 0) {
        item.clear();
        item.add(RowMainListReadmore());
      } else {
        item.clear();
        item.add(RowMainListReadmore());
      }
    }

    return item;
  }


}

