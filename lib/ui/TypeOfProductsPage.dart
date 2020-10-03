import 'package:flutter/material.dart';
import 'package:originalpalv2/component/MyAppBar.dart';
import 'package:originalpalv2/component/Search/RowSearchListComplex.dart';
import 'package:originalpalv2/main.dart';

class TypeOfProductsPage extends StatefulWidget {
  @override
  _TypeOfProductsPageState createState() => _TypeOfProductsPageState();
}

class _TypeOfProductsPageState extends State<TypeOfProductsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        title: "MEN - SHOES",
      ),
      body: Material(
        child: Container(
          child: ListView.builder(
            itemCount: 20,
            itemBuilder: (context, index) {
              return RowSearchListComplex();
            },
          ),
        ),
      ),
    );
  }
}
