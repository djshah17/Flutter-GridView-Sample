import 'package:flutter/material.dart';

import 'country_info.dart';
import 'my_card_layout.dart';

class MyGridViewCountPage extends StatefulWidget {

  List<CountryInfo> listCountries;

  MyGridViewCountPage({this.listCountries});

  @override
  _MyGridViewCountPageState createState() => _MyGridViewCountPageState();
}

class _MyGridViewCountPageState extends State<MyGridViewCountPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('GridView.count()')),
        body: Container(
            color: Colors.white,
            child: GridView.count(
              crossAxisCount: 2,
              padding: const EdgeInsets.all(5.0),
              mainAxisSpacing: 5.0,
              crossAxisSpacing: 5.0,
              children: widget.listCountries.map((CountryInfo country) {
                return MyCardLayout(country);
              }).toList(),
            ))
    );
  }
}
