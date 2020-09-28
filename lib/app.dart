import 'package:env_bloc/repositories/repositories.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_flavor/flutter_flavor.dart';
import 'blocs/timer_bloc.dart';
import 'package:env_bloc/dataproviders/ticker_dataprovider.dart';
import 'screens/screens.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FlavorBanner(
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primaryColor: Color.fromRGBO(109, 234, 255, 1),
          accentColor: Color.fromRGBO(72, 74, 126, 1),
          brightness: Brightness.dark,
        ),
        title: 'Flutter Timer',
        home: BlocProvider(
          create: (context) => TimerBloc(ticker: TimerRepository()),
          child: Timer(),
        ),
      )
    );
  }
}