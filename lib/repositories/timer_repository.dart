import 'package:env_bloc/dataproviders/dataproviders.dart';
import 'package:flutter/cupertino.dart';

class TimerRepository {
  final TickerDataProvider tickerData = new TickerDataProvider();

  TimerRepository();

  tick({int ticks}) {
    return tickerData.tick(ticks: 60);
  }
}