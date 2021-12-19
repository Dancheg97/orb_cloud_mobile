import 'dart:typed_data';

import 'package:ORBmobile/requests/info_check_name.dart';
import 'package:ORBmobile/requests/info_has_trades.dart';
import 'package:ORBmobile/requests/info_market.dart';
import 'package:ORBmobile/requests/info_market_subscribe.dart';
import 'package:ORBmobile/requests/info_messages.dart';
import 'package:ORBmobile/requests/info_net_members.dart';
import 'package:ORBmobile/requests/info_search.dart';
import 'package:ORBmobile/requests/info_user.dart';
import 'package:ORBmobile/requests/info_user_subscribe.dart';

/// ### InfoRequests (static class)
/// ---
/// This class operates grpc calls to network.
/// Request description can be found in `api.proto` file and on method call.
/// -----
/// Function description is available on call.
class Info {
  /// Call that gives information about user
  static Future<UserInfo> user(Uint8List adress) {
    return infoUser(adress);
  }

  /// Call that creates subscription for on user information updates
  static UserInfoStream userSubscribe(Uint8List adress) {
    return infoUserSubscribtion(adress);
  }

  /// Call that checks wether some user has acive trades
  static Future<bool> hasTrades(Uint8List marketAdress) {
    return infoHasTrades(marketAdress);
  }

  /// Call that gives information about market
  static Future<MarketInfo> marketInfo(Uint8List adress) {
    return infoMarket(adress);
  }

  /// Call that creates subsription on market information updates
  static MarketInfoStream marketSubscribe(Uint8List market) {
    return marketSubscribe(market);
  }

  /// Call makes search throw registered markets
  static Future<List<Uint8List>> marketSearch(String text) {
    return infoSearch(text);
  }

  /// Call that gives messages related to pair of user and market by adresses
  static Future<List<String>> marketMessage(Uint8List marketAdress) {
    return infoMessages(marketAdress);
  }

  /// Creates a subscription on updates for user/market message pair
  static UserInfoStream messageSubscribe(Uint8List adress) {
    return infoUserSubscribtion(adress);
  }

  /// Checks wether user name is viable
  static Future<bool> checkName(String name) {
    return infoCheckName(name);
  }

  /// Gives information about ip adresses currently hosting the network
  static Future<List<String>> netMembers() {
    return infoNetMembers();
  }
}
