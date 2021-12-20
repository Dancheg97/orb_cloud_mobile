import 'dart:typed_data';

import 'info_check_name.dart';
import 'info_has_trades.dart';
import 'info_market.dart';
import 'info_market_subscribe.dart';
import 'info_messages.dart';
import 'info_net_members.dart';
import 'info_search.dart';
import 'info_user.dart';
import 'info_user_subscribe.dart';

import 'user_buy.dart';
import 'user_cancel_trade.dart';
import 'user_create.dart';
import 'user_message.dart';
import 'user_sell.dart';
import 'user_send.dart';

/// ### InfoRequests (static class)
/// ---
/// This class operates grpc calls to network.
/// Request description can be found in `api.proto` file and on method call.
/// -----
/// Function description is available on call.
class InfoCalls {
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

/// ### UserCalls (static class)
/// ---
/// This class operates grpc calls to network.
/// Request description can be found in `api.proto` file and on method call.
/// -----
/// Function description is available on call.
class UserCalls {
  /// Call that will create new user
  static Future<bool> create(String name) {
    return userCreate(name);
  }

  /// Call that will initiate transaction between users (send some ORB)
  static Future<bool> send(Uint8List adress, int amount) {
    return userSend(adress, amount);
  }

  /// Call used to send message from user to market
  static Future<bool> message(Uint8List adress, String message) {
    return userMessage(adress, message);
  }

  /// Call used to initiate buy order placement buy user
  static Future<bool> buy(Uint8List adress, int recieve, int offer) {
    return userBuy(adress, recieve, offer);
  }

  /// Call used to initiate sell oreder placement by user
  static Future<bool> sell(Uint8List adress, int recieve, int offer) {
    return userSell(adress, recieve, offer);
  }

  /// Call used to initiate cancelling of existing trade order on market
  static Future<bool> cancelTrade(Uint8List adress) {
    return userCancelTrade(adress);
  }
}
