import 'package:env_bloc/dataproviders/dataproviders.dart';
import 'package:env_bloc/dataproviders/ticker_dataprovider_interface.dart';
import 'package:env_bloc/dataproviders/ticker_dataprovider_two.dart';
import 'package:flutter_flavor/flutter_flavor.dart';

class TimerRepository {
  final String service = FlavorConfig.instance.variables['service'];
  TickerDataProviderInterface tickerData;

  TimerRepository() {
    switch (service) {
      case 'one':
        tickerData = TickerDataProvider();
        break;
      case 'two':
        tickerData = TickerDataProviderTwo();
        break;
      default:
    }
  }

  tick({int ticks}) {
    return tickerData.tick(ticks: ticks);
  }
}