import 'package:flutter/material.dart';
import 'package:flutter_flavor/flutter_flavor.dart';

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Center(
        child: Text(FlavorConfig.instance.variables['title'] + ' ' +
          FlavorConfig.instance.variables['counter'].toString()),
      )
    );
  }
}