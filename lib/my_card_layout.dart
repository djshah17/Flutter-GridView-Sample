import 'package:flutter/material.dart';
import 'package:fluttergridviewsample/country_info.dart';

class MyCardLayout extends StatelessWidget {

  CountryInfo countryInfo;

  MyCardLayout(this.countryInfo);

  @override
  Widget build(BuildContext context) {
    return Card(
          clipBehavior: Clip.antiAliasWithSaveLayer,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: Stack(fit: StackFit.expand, children: <Widget>[
            Image.asset(countryInfo.imagePath, fit: BoxFit.cover),
            Container(
              margin: EdgeInsets.only(left: 10, bottom: 10),
              alignment: Alignment.bottomLeft,
              child: Text(countryInfo.title,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                    color: Colors.white,
                    shadows: [
                      Shadow(
                        blurRadius: 3.0,
                        color: Colors.black12,
                        offset: Offset(3.0, 3.0),
                      ),
                    ],
                  )),
            )
          ]),
        );
  }
}
