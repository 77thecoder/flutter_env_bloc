import 'package:flutter/material.dart';
import 'package:flutter_flavor/flutter_flavor.dart';
import 'my_home_page.dart';

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return FlavorBanner(
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: FlavorConfig.instance.variables['title'],
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: MyHomePage(title: FlavorConfig.instance.variables['title']),
      ),
    );
  }
}