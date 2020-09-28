import 'package:flutter/material.dart';

class CustomBottomNavigationBar extends StatefulWidget {
  final int defaultSelectedIndex;
  final Function(int) onChange;
  final List<IconData> iconList;

  CustomBottomNavigationBar(
      {this.defaultSelectedIndex = 0,
      @required this.iconList,
      @required this.onChange});

  @override
  _CustomBottomNavigationBarState createState() =>
      _CustomBottomNavigationBarState();
}

class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
  var _selectedIndex = 0;
  List<IconData> _iconList;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _selectedIndex = widget.defaultSelectedIndex;
    _iconList = widget.iconList;
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> _navBarItem = [];
    for (int i = 0; i < _iconList.length; i++) {
      _navBarItem.add(_customNavigationBarItem(context, _iconList[i], i));
    }
    return Container(
      height: 56,
      child: Row(
        children:_navBarItem,
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
        height: 56,
        color: Colors.white,
        child: Icon(
          icon,
          size: 24,
          color: _selectedIndex==index?Colors.black:Colors.grey,
        ),
        width: MediaQuery.of(context).size.width /_iconList.length,
      ),
    );
  }
}
