import 'package:env_bloc/dataproviders/dataproviders.dart';
import 'package:flutter/cupertino.dart';

class TimerRepository {
  final TickerDataProvider tickerData = new TickerDataProvider();
  int ticks;

  TimerRepository({@required this.ticks});

  tick({int ticks}) {
    return tickerData.tick(ticks: ticks);
  }
}