import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:originalpalv2/component/Search/MyTabBar.dart';
import 'package:originalpalv2/ui/Search/KidsList.dart';
import 'package:originalpalv2/ui/Search/MenList.dart';
import 'package:originalpalv2/ui/Search/WomenList.dart';
import 'package:originalpalv2/utils/AppConfig.dart';

class SearchPage extends StatefulWidget {
  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    AppConfig().init(context);
    return SafeArea(
      child: Material(
          child: Container(
        child: Column(
          children: [
            Expanded(
              child: Material(
                child: MyTabBar(
                  onTap: (value) {},
                  tabs: [
                    Tab(
                      child: Text(
                        "MEN",
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                        style: TextStyle(),
                      ),
                    ),
                    Tab(
                      child: Text(
                        "WOMEN",
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                      ),
                    ),
                    Tab(
                      child: Text(
                        "KIDS",
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                      ),
                    ),
                  ],
                  pages: [
                    Container(
                      color: Colors.green,
                      child: MenList(),
                    ),
                    Container(
                      color: Colors.blue,
                      child: WomenList(),
                    ),
                    Container(
                      color: Colors.blue,
                      child: KidsList(),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      )),
    );
  }
}
