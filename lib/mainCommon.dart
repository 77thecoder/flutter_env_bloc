import 'package:flutter/material.dart';
import 'package:env/app.dart';
import 'package:env/core/config_reader.dart';

Future<void> mainCommon(String env) async {
  WidgetsFlutterBinding.ensureInitialized();

  await ConfigReader.initialize(env);

  runApp(MyApp());
}