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

class Trade {
  int offer;
  int recieve;
  Trade({
    required this.offer,
    required this.recieve,
  });
}

