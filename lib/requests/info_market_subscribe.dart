import 'info_market.dart';

class MarketInfoStream {
  Stream<MarketInfo> stream;
  Function cancel;
  MarketInfoStream({
    required this.stream,
    required this.cancel,
  });
}
