import 'package:env_bloc/dataproviders/ticker_dataprovider_interface.dart';

class TickerDataProviderTwo extends TickerDataProviderInterface {
  @override
  Stream<int> tick({int ticks}) {
    return Stream.periodic(Duration(seconds: 1), (x) => ticks - x - 5)
        .take(ticks);
  }
}
