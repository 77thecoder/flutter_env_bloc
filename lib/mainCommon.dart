import 'package:flutter/material.dart';
import 'package:env/app.dart';
import 'package:env/config/config_reader.dart';
import 'package:flutter_flavor/flutter_flavor.dart';

Future<void> mainCommon(String env) async {
  WidgetsFlutterBinding.ensureInitialized();

  await ConfigReader.initialize(env);

  runApp(MyApp());
}