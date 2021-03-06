import 'package:env_bloc/dataproviders/ticker_dataprovider_interface.dart';

class TickerDataProvider extends TickerDataProviderInterface {
  @override
  Stream<int> tick({int ticks}) {
    return Stream.periodic(Duration(seconds: 1), (x) => ticks - x - 1)
        .take(ticks);
  }
}
