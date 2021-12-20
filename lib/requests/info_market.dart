import '../api/main.dart';
import 'dart:typed_data';

class MarketInfo {
  String name;
  Uint8List messageKey;
  String imageLink;
  String description;
  int operationCount;
  List<Trade> buys;
  List<Trade> sells;
  int activeBuys;
  int activeSells;
  int inputFee;
  int outputFee;
  String workTime;
  int delimiter;
  MarketInfo({
    required this.name,
    required this.messageKey,
    required this.imageLink,
    required this.description,
    required this.operationCount,
    required this.buys,
    required this.sells,
    required this.activeBuys,
    required this.activeSells,
    required this.inputFee,
    required this.outputFee,
    required this.workTime,
    required this.delimiter,
  });
}

MarketInfo transformMarketInfo(InfOut_MarketInfo response) {
  return MarketInfo(
    name: response.name,
    messageKey: Uint8List.fromList(response.messageKey),
    imageLink: response.imageLink,
    description: response.description,
    operationCount: response.operationCount.toInt(),
    buys: response.buys.map((e) => transformTrade(e)).toList(),
    sells: response.sells.map((e) => transformTrade(e)).toList(),
    activeBuys: response.activeBuys.toInt(),
    activeSells: response.activeSells.toInt(),
    inputFee: response.inputFee.toInt(),
    outputFee: response.outputFee.toInt(),
    workTime: response.workTime,
    delimiter: response.delimiter.toInt(),
  );
}

class Trade {
  int offer;
  int recieve;
  Trade({
    required this.offer,
    required this.recieve,
  });
}

Trade transformTrade(InfOut_Trade response) {
  return Trade(
    offer: response.offer.toInt(),
    recieve: response.recieve.toInt(),
  );
}

Future<MarketInfo> infoMarket(Uint8List adress) async {
  var response = await infoStub.market(
    InfIn_Adress(
      adress: adress,
    ),
  );
  return transformMarketInfo(response);
}
