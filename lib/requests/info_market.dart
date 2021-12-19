import '../api/main.dart';
import 'dart:typed_data';

class MarketInfo {
  late final String name;
  late final Uint8List messageKey;
  late final String imageLink;
  late final String description;
  late final int operationCount;
  late final List<Trade> buys;
  late final List<Trade> sells;
  late final int activeBuys;
  late final int activeSells;
  late final int inputFee;
  late final int outputFee;
  late final String workTime;
  late final int delimiter;
  MarketInfo.fromResponse(InfOut_MarketInfo response) {
    name = response.name;
    messageKey = Uint8List.fromList(response.messageKey);
    imageLink = response.imageLink;
    description = response.description;
    operationCount = response.operationCount.toInt();
    buys = response.buys.map((e) => Trade.fromResponse(e)).toList();
    sells = response.sells.map((e) => Trade.fromResponse(e)).toList();
    activeBuys = response.activeBuys.toInt();
    activeSells = response.activeSells.toInt();
    inputFee = response.inputFee.toInt();
    outputFee = response.outputFee.toInt();
    workTime = response.workTime;
    delimiter = response.delimiter.toInt();
  }
}

class Trade {
  late final int offer;
  late final int recieve;
  Trade.fromResponse(InfOut_Trade response) {
    offer = response.offer.toInt();
    recieve = response.recieve.toInt();
  }
}

Future<MarketInfo> marketInfo(Uint8List adress) async {
  var response = await infoStub.market(
    InfIn_Adress(
      adress: adress,
    ),
  );
  return MarketInfo.fromResponse(response);
}
