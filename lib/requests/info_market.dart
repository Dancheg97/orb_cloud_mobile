import '../api/main.dart';
import 'dart:typed_data';

class MarketInfo {
  String name;
  Uint8List messageKey;
  String imageLink;
  String description;
  double operationCount;
  List<Trade> buys;
  List<Trade> sells;
  double activeBuys;
  double activeSells;
  double inputFee;
  double outputFee;
  String workTime;
  double delimiter;
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
    operationCount: response.operationCount,
    buys: response.buys.map((e) => transformTrade(e)).toList(),
    sells: response.sells.map((e) => transformTrade(e)).toList(),
    activeBuys: response.activeBuys,
    activeSells: response.activeSells,
    inputFee: response.inputFee,
    outputFee: response.outputFee,
    workTime: response.workTime,
    delimiter: response.delimiter,
  );
}

class Trade {
  double offer;
  double recieve;
  Trade({
    required this.offer,
    required this.recieve,
  });
}

Trade transformTrade(InfOut_Trade response) {
  return Trade(
    offer: response.offer,
    recieve: response.recieve,
  );
}

Future<MarketInfo> marketInfo(Uint8List adress) async {
  var response = await infoStub.market(
    InfIn_Adress(
      adress: adress,
    ),
  );
  return transformMarketInfo(response);
}
