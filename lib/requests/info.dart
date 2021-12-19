import 'dart:typed_data';

import 'package:ORBmobile/requests/info_check_name.dart';
import 'package:ORBmobile/requests/info_has_trades.dart';
import 'package:ORBmobile/requests/info_market.dart';

/// ### InfoRequests (static class)
/// ---
/// This class operates grpc calls to network.
/// Request description can be found in `api.proto` file.
///
/// Possible requests:
/// - checkName
/// - userInfo
class Info {
  /// Function that is used to check name for profanity and being already used
  static Future<bool> checkName(String name) {
    return infoCheckName(name);
  }

  /// Function that is used to check if used has trades on specific market
  static Future<bool> hasTrades(Uint8List marketAdress) {
    return infoHasTrades(marketAdress);
  }

  /// Function that gives a class containing all information related to
  /// specific market
  static Future<MarketInfo> marketInfo(Uint8List adress) {
    return infoMarket(adress);
  }

  ///
}
