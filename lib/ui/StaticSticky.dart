import 'package:flutter/material.dart';

class StaticSticky extends StatefulWidget {
  @override
  _StaticStickyState createState() => _StaticStickyState();
}

class _StaticStickyState extends State<StaticSticky> {
  int selectedIndex=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        //currentIndex: selectedIndex,
        fixedColor: Colors.red,
        onTap: (indexx){
          setState(() {
            selectedIndex=indexx;
          });
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home),title: Text('asdas')),
          BottomNavigationBarItem(icon: Icon(Icons.print), title: Text('asdas')),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_balance), title: Text('asdas')),
        ],
      ),
    );
  }
}
