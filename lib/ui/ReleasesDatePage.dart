import 'package:flutter/material.dart';
import 'package:originalpalv2/component/DetailsProduct.dart';

class ReleasesDatePage extends StatefulWidget {
  @override
  _ReleasesDatePageState createState() => _ReleasesDatePageState();
}

class _ReleasesDatePageState extends State<ReleasesDatePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Material(child: Container(
      child: ListView.builder(
        itemCount: 5,
        itemBuilder: (context, index) {
          return DetailsProduct();
        },
      ),
    )));
  }
}
