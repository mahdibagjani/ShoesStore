import 'package:flutter/material.dart';
import 'package:originalpalv2/utils/AppConfig.dart';

class CustomBottomNavigationBar extends StatefulWidget {
  final int defaultSelectedIndex;
  final Function(int) onChange;
  final List<IconData> iconList;
  double height;
  var backgroundColor;
  var selectedItemColor;
  var unSelectedItemColor;
  var shadowColor;
  BoxDecoration boxDecoration;

  CustomBottomNavigationBar(
      {this.defaultSelectedIndex = 0,
      @required this.iconList,
      @required this.onChange,
      this.backgroundColor=Colors.white,
      this.selectedItemColor = Colors.red,
      this.unSelectedItemColor=Colors.blue,
      this.shadowColor=Colors.green,
      this.height = 56,
      this.boxDecoration});

  @override
  _CustomBottomNavigationBarState createState() =>
      _CustomBottomNavigationBarState();
}

class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
  var _selectedIndex = 0;

  //List<IconData> _iconList;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _selectedIndex = widget.defaultSelectedIndex;
        // _iconList = widget.iconList;
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> _navBarItem = [];
    for (int i = 0; i < widget.iconList.length; i++) {
      _navBarItem.add(_customNavigationBarItem(context, widget.iconList[i], i));
    }
    return Container(
      height: widget.height,
      decoration:widget.boxDecoration,
      child: Row(
        children: _navBarItem,
      ),
    );
  }

  Widget _customNavigationBarItem(
      BuildContext context, IconData icon, int index) {
    return GestureDetector(
      onTap: () {
        widget.onChange(index);
        setState(() {
          _selectedIndex = index;
        });
      },
      child: Container(
        height: widget.height,
        color: widget.backgroundColor,
        child: Icon(
          icon,
          size: 24,
          color: _selectedIndex == index ? widget.selectedItemColor : widget.unSelectedItemColor,
        ),
        width: AppConfig.screenWidth / (widget.iconList.length),
      ),
    );
  }
}
