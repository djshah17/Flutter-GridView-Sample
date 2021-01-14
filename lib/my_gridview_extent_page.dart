import 'package:flutter/material.dart';

import 'country_info.dart';
import 'my_card_layout.dart';

class MyGridViewExtentPage extends StatefulWidget {

  List<CountryInfo> listCountries;

  MyGridViewExtentPage({this.listCountries});

  @override
  _MyGridViewExtentPageState createState() => _MyGridViewExtentPageState();
}

class _MyGridViewExtentPageState extends State<MyGridViewExtentPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('GridView.extent()')),
        body: Container(
            color: Colors.white,
            child: GridView.extent(
              maxCrossAxisExtent: 300,
              children: widget.listCountries.map((CountryInfo country) {
                return MyCardLayout(country);
              }).toList(),
              padding: const EdgeInsets.all(5.0),
            )));
  }
}
