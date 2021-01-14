import 'package:flutter/material.dart';
import 'package:fluttergridviewsample/my_card_layout.dart';
import 'country_info.dart';

class MyGridViewPage extends StatefulWidget {

  List<CountryInfo> listCountries;

  MyGridViewPage({this.listCountries});

  @override
  _MyGridViewPageState createState() => _MyGridViewPageState();
}

class _MyGridViewPageState extends State<MyGridViewPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('GridView()')),
      body: Container(
          color: Colors.white,
          child: GridView(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
            padding: const EdgeInsets.all(5.0),
            children: widget.listCountries.map((CountryInfo country) {
              return MyCardLayout(country);
            }).toList(),
          )),
    );
  }
}
