import 'package:flutter/material.dart';

class RowMainListReadmore extends StatefulWidget {
  @override
  _RowMainListReadmoreState createState() => _RowMainListReadmoreState();
}

class _RowMainListReadmoreState extends State<RowMainListReadmore> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        padding: EdgeInsets.all(20),
        width: MediaQuery.of(context).size.width,
        height: 100,
        color: Colors.black,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
              Text('BLACK LIVES MATTER: OUR COMMITMENTS',style: TextStyle(
                fontSize: 18,
                color: Colors.white,
              ),),
              Spacer(),
              Text('READ MORE',style: TextStyle(
                fontSize: 21,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
               decoration:TextDecoration.underline
              ),),
          ],
        ),
      ),
    );
  }
}
