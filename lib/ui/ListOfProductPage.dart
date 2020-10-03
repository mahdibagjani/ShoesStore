import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:originalpalv2/Consts/MyColors.dart';
import 'package:originalpalv2/component/Button/BlackButton.dart';
import 'package:originalpalv2/component/Button/TextWithImageButton.dart';
import 'package:originalpalv2/component/ChildSheetList.dart';
import 'package:originalpalv2/component/MyAppBar.dart';
import 'package:originalpalv2/component/RowListOfProduct.dart';
import 'package:originalpalv2/utils/AppConfig.dart';

class ListOfProductPage extends StatefulWidget {
  @override
  _ListOfProductPageState createState() => _ListOfProductPageState();
}

class _ListOfProductPageState extends State<ListOfProductPage> {
  List<String> _filterBottomSheetList;
  List<List<Widget>> _childBottomSheetWidgetList;

  @override
  Widget build(BuildContext context) {
    _filterBottomSheetList = [
      "SORT BY",
      "GENDER",
      "SIZE",
      "COLOR",
      "NEW ARRIVALS"
    ];
    List<Color> _mColors = [
      Color(0xffff0000),
      Color(0xff00ff00),
      Color(0xff0000ff),
    ];
    _childBottomSheetWidgetList = [
      [
        Text("aaa"),
      ],
      [
        Text("bbb"),
        Text("bbb"),
      ],
      [
        Text("M"),
        Text("S"),
        Text("L"),
      ],
      [
        for (int i = 0; i < _mColors.length; i++)
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text("sdsa"),
              SizedBox(
                width: 20,
              ),
              Container(
                height: 48,
                width: 48,
                color: _mColors[i],
              ),
            ],
          ),
      ],
      [
        Text("ddd"),
        Text("ddd"),
        Text("ddd"),
        Text("ddd"),
        Text("ddd"),
      ]
    ];
    return Scaffold(
      appBar: MyAppBar(
        title: "yep",
      ),
      body: Material(
        child: Container(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                    border: Border(
                        top: BorderSide(
                            color: MyColor.TEXT_COLOR_GREY_LIGHT, width: 1)),
                    color: Colors.white,
                  ),
                  padding: EdgeInsets.all(8),
                  height: 56,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("161 RESULTES"),
                      InkWell(
                          onTap: () {
                            _openFilterSheet(context, _filterBottomSheetList,
                                _childBottomSheetWidgetList);
                          },
                          child: Icon(Icons.settings_input_component))
                    ],
                  ),
                ),
                Container(
                  height: AppConfig.screenHeight - 168,
                  color: Colors.yellow,
                  width: AppConfig.screenWidth,
                  child: GridView.builder(
                      itemCount: 20,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          childAspectRatio: _size(), crossAxisCount: 2),
                      itemBuilder: (BuildContext context, int index) {
                        return RowListOfProduct();
                      }),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  double _size() {
    if (AppConfig.devicePixel <= 1.5) {
      return MediaQuery.of(context).size.height / 1300;
    } else if (AppConfig.devicePixel > 1.5 && AppConfig.devicePixel <= 2) {
      return MediaQuery.of(context).size.height / 1100;
    } else {
      return MediaQuery.of(context).size.height / 1200;
    }
  }

  void _openFilterSheet(
      context, List<String> items, List<List<Widget>> widgets) {
    showModalBottomSheet(
        context: context,
        isScrollControlled: true,
        builder: (BuildContext context) {
          return Container(
              child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  TextWithImageButton(
                    text: "REFINE RESULT",
                    color: MyColor.TEXT_COLOR,
                    icon: Icons.close,
                    textColor: MyColor.MAIN_COLOR,
                    onImageClick: () {
                      Navigator.of(context).pop();
                    },
                  ),
                  Text("65 items"),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "CLEAR ALL",
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        decoration: TextDecoration.underline),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  SingleChildScrollView(
                    child: Column(
                      children: [
                        for (int i = 0; i < items.length; i++)
                          InkWell(
                            onTap: () {
                              _openChildSheet(widgets[i], context);
                            },
                            child: Container(
                              child: Padding(
                                  padding: EdgeInsets.only(top: 12, bottom: 12),
                                  child: Text(items[i])),
                              decoration: BoxDecoration(
                                  border: Border(
                                bottom: BorderSide(
                                    width: 1,
                                    color: MyColor.TEXT_COLOR_GREY_LIGHT),
                              )),
                              width: AppConfig.screenWidth,
                            ),
                          ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  BlackButton(text: "VIEW ITEMS")
                ],
              ),
            ),
          ));
        });
  }

  void _openChildSheet(List<Widget> widgets, context) {
    Navigator.of(context).pop();
    showModalBottomSheet(
        context: context,isDismissible: false,
        isScrollControlled: true,

        builder: (BuildContext context) {

          return ChildSheetList(
            title: "NEW ARRIVALS",
            widgets: widgets,
            onClick: () {
              _openFilterSheet(
                  context, _filterBottomSheetList, _childBottomSheetWidgetList);
            },
          );
        });
  }
}
