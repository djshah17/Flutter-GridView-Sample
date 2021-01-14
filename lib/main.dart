import 'package:flutter/material.dart';
import 'package:fluttergridviewsample/my_gridview_count_page.dart';
import 'package:fluttergridviewsample/my_gridview_extent_page.dart';
import 'package:fluttergridviewsample/my_gridview_page.dart';
import 'package:fluttergridviewsample/my_gridview_constructors_page.dart';

import 'my_gridview_builder_page.dart';
import 'my_gridview_custom_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyGridViewConstructorsPage(),
      onGenerateRoute: generateRoute,
    );
  }
}

Route<dynamic> generateRoute(RouteSettings settings) {
  final args = settings.arguments;

  switch (settings.name) {
    case '/MyGridViewTypesPage':
      return MaterialPageRoute(builder: (_) => MyGridViewConstructorsPage());
    case '/MyGridViewPage':
      return MaterialPageRoute(
        builder: (_) => MyGridViewPage(
          listCountries: args,
        ),
      );
    case '/MyGridViewCountPage':
      return MaterialPageRoute(
        builder: (_) => MyGridViewCountPage(
          listCountries: args,
        ),
      );
    case '/MyGridViewBuilderPage':
      return MaterialPageRoute(
        builder: (_) => MyGridViewBuilderPage(
          listCountries: args,
        ),
      );
    case '/MyGridViewCustomPage':
      return MaterialPageRoute(
        builder: (_) => MyGridViewCustomPage(
          listCountries: args,
        ),
      );
    case '/MyGridViewExtentPage':
      return MaterialPageRoute(
        builder: (_) => MyGridViewExtentPage(
          listCountries: args,
        ),
      );
    default:
      return null;
  }
}
