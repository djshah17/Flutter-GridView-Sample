import 'package:flutter/material.dart';

import 'country_info.dart';
import 'my_card_layout.dart';

class MyGridViewBuilderPage extends StatefulWidget {

  List<CountryInfo> listCountries;

  MyGridViewBuilderPage({this.listCountries});

  @override
  _MyGridViewBuilderPageState createState() => _MyGridViewBuilderPageState();
}

class _MyGridViewBuilderPageState extends State<MyGridViewBuilderPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('GridView.builder()')),
        body: Container(
            color: Colors.white,
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
              itemBuilder: (BuildContext context, int index) {
                return MyCardLayout(widget.listCountries[index]);
              },
              itemCount: widget.listCountries.length,
              padding: const EdgeInsets.all(5.0),
            )));
  }
}
