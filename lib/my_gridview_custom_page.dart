import 'package:flutter/material.dart';

import 'country_info.dart';
import 'my_card_layout.dart';

class MyGridViewCustomPage extends StatefulWidget {

  List<CountryInfo> listCountries;

  MyGridViewCustomPage({this.listCountries});

  @override
  _MyGridViewCustomPageState createState() => _MyGridViewCustomPageState();
}

class _MyGridViewCustomPageState extends State<MyGridViewCustomPage> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
        appBar: AppBar(title: Text('GridView.custom()')),
        body: Container(
            color: Colors.white,
            child: GridView.custom(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
              childrenDelegate: SliverChildListDelegate(
                widget.listCountries.map((CountryInfo country) {
                  return MyCardLayout(country);
                }).toList(),
              ),
              padding: const EdgeInsets.all(5.0),
            )));
  }
}
