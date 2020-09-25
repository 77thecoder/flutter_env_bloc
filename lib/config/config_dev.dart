import 'package:flutter/material.dart';
import 'package:flutter_flavor/flutter_flavor.dart';
import 'package:env/config/config.dart';

class ConfigDEV {
  FlavorConfig call() {
    return FlavorConfig(
      environment: FlavorEnvironment.DEV,
      location: BannerLocation.topEnd,
      variables: {
        "counter": 55555,
        "title": "BlaBlaBla",
      },
    );
  }
}