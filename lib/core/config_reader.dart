import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_flavor/flutter_flavor.dart';

class ConfigReader {
  static Map<String, dynamic> _config;
  static FlavorEnvironment _environment;
  static String _name;

  static Future<Map<String, dynamic>> initialize(String env) async {
    final configString = await rootBundle.loadString('config/app_config_$env.json');
    _config = json.decode(configString) as Map<String, dynamic>;
    print(_config.toString());

    switch(env) {
      case 'dev':
        _environment = FlavorEnvironment.DEV;
        _name = 'DEV';
        break;
      case 'prod':
        _environment = FlavorEnvironment.PROD;
        _name = 'PROD';
        break;
      case 'test':
        _environment = FlavorEnvironment.TEST;
        _name = 'TEST';
        break;
      default:
        _environment = FlavorEnvironment.DEV;
        _name = 'DEV';
    }

    _environment = FlavorEnvironment.TEST;

    FlavorConfig(
      environment: _environment,
      name: _name,
      color: Colors.red,
      location: BannerLocation.bottomStart,
      variables: _config,
    );
  }
}