import 'package:flutter/material.dart';
import 'package:originalpalv2/bloc/GetOneBrandData.dart';
import 'package:sticky_infinite_list/sticky_infinite_list.dart';

class Stic extends StatefulWidget {
  @override
  _SticState createState() => _SticState();
}

class _SticState extends State<Stic> {
  List<String> pageTitle = [
    "aaa",
    "bbb",
    "ccc",
    "ddd",
    "eee",
    "fff",
    "ggg",
  ];
var aa=3;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ui design'),
        centerTitle: true,
      ),
      body: InfiniteList(
        posChildCount: 5,
        controller: ScrollController(),
        direction: InfiniteListDirection.single,
        builder: (context, index) {
          return InfiniteListItem.overlay(
              headerStateBuilder: (context, state) {
                return RotatedBox(
                  quarterTurns: 3,
                  child: Container(
                      padding:
                          EdgeInsets.only(left: 8, right: 8, top: 4, bottom: 4),
                      color: Color(0xfff9FBE7),
                      margin: EdgeInsets.only(top: 20, right: 50),
                      child: Text(
                        'Hello World!' + state.index.toString(),
                        style: TextStyle(letterSpacing: 5),
                      )),
                );
              },
              contentBuilder: (context) => Column(
                    children: data(),
                  ));
        },
      ),
    );
  }

  List<Widget> data() {
    List<Widget> a=List();
    for (int i = 0; i < aa; i++) {
      a.add(Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10), color: Colors.grey),
        margin: EdgeInsets.only(left: 8, top: 5, bottom: 5, right: 10),
        padding: EdgeInsets.all(8),
        height: 300,
        width: 500,
      ));
    }

    return a;
  }
}
