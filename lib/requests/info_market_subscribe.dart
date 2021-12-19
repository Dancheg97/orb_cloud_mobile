import 'dart:typed_data';

import 'package:ORBmobile/api/main.dart';

import 'info_market.dart';

class MarketInfoStream {
  Stream<MarketInfo> stream;
  Function cancel;
  MarketInfoStream({
    required this.stream,
    required this.cancel,
  });
}

MarketInfoStream infoMarketSubscribe(Uint8List adress) {
  var grpcStream = infoStub.marketSubscribe(
    InfIn_Adress(adress: adress),
  );
  var dartStream = grpcStream.map(
    (response) => transformMarketInfo(response),
  );
  var userInfoStream = MarketInfoStream(
    stream: dartStream,
    cancel: grpcStream.cancel,
  );
  return userInfoStream;
}
