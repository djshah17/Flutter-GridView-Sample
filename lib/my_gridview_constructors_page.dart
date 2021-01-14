import 'package:flutter/material.dart';
import 'country_info.dart';

class MyGridViewConstructorsPage extends StatefulWidget {

  MyGridViewConstructorsPage();

  @override
  _MyGridViewConstructorsPageState createState() => _MyGridViewConstructorsPageState();
}

class _MyGridViewConstructorsPageState extends State<MyGridViewConstructorsPage> {

  CountryInfo usaInfo = CountryInfo("USA", "images/usa.jpg");
  CountryInfo englandInfo = CountryInfo("England", "images/england.jpg");
  CountryInfo franceInfo = CountryInfo("France", "images/france.jpg");
  CountryInfo russiaInfo = CountryInfo("Russia", "images/russia.jpg");
  CountryInfo canadaInfo = CountryInfo("Canada", "images/canada.jpg");

  List<CountryInfo> listCountries = [];

  @override
  Widget build(BuildContext context) {

    listCountries = [];
    listCountries.add(usaInfo);
    listCountries.add(englandInfo);
    listCountries.add(franceInfo);
    listCountries.add(russiaInfo);
    listCountries.add(canadaInfo);

    return Scaffold(
      appBar: AppBar(title: Text('GridView Constructors')),
      body: Container(
        margin: EdgeInsets.only(top:15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: double.infinity,
              height: 60,
              margin: EdgeInsets.symmetric(horizontal:30, vertical: 15),
              child: RaisedButton(
                  color: Colors.pink,
                  child: Text('GridView()', style: TextStyle(color: Colors.white, fontSize: 25)),
                  onPressed: () => Navigator.pushNamed(context, '/MyGridViewPage', arguments: listCountries)),
            ),
            Container(
              width: double.infinity,
              height: 60,
              margin: EdgeInsets.symmetric(horizontal:30, vertical: 15),
              child: RaisedButton(
                  color: Colors.pink,
                  child: Text('GridView.count()', style: TextStyle(color: Colors.white, fontSize: 25)),
                  onPressed: () => Navigator.pushNamed(context, '/MyGridViewCountPage', arguments: listCountries)),
            ),
            Container(
              width: double.infinity,
              height: 60,
              margin: EdgeInsets.symmetric(horizontal:30, vertical: 15),
              child: RaisedButton(
                  color: Colors.pink,
                  child: Text('GridView.builder()', style: TextStyle(color: Colors.white, fontSize: 25)),
                  onPressed: () => Navigator.pushNamed(context, '/MyGridViewBuilderPage', arguments: listCountries)),
            ),
            Container(
              width: double.infinity,
              height: 60,
              margin: EdgeInsets.symmetric(horizontal:30, vertical: 15),
              child: RaisedButton(
                  color: Colors.pink,
                  child: Text('GridView.custom()', style: TextStyle(color: Colors.white, fontSize: 25)),
                  onPressed: () => Navigator.pushNamed(context, '/MyGridViewCustomPage', arguments: listCountries)),
            ),
            Container(
              width: double.infinity,
              height: 60,
              margin: EdgeInsets.symmetric(horizontal:30, vertical: 15),
              child: RaisedButton(
                  color: Colors.pink,
                  child: Text('GridView.extent()', style: TextStyle(color: Colors.white, fontSize: 25)),
                  onPressed: () => Navigator.pushNamed(context, '/MyGridViewExtentPage', arguments: listCountries)),
            )
          ],
        ),
      ),
    );
  }
}
