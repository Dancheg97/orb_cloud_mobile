import 'english.dart';
import 'russian.dart';
import 'dart:io';

var ld = _getLang();

Language _getLang() {
  final String defaultLocale = Platform.localeName;
  if (defaultLocale.startsWith('ru')) {
    return russian;
  }
  return english;
}

class Language {
  String pageMarket;
  String pageWallet;
  String pageSettings;
  String introHello;
  String introHelloMessage;
  String introDistributed;
  String introDistributedMessage;
  String introOpen;
  String introOpenMessage;
  String inroTrading;
  String introTradingMessage;
  String introFast;
  String introFastMessage;

  Language({
    required this.pageMarket,
    required this.pageWallet,
    required this.pageSettings,
    required this.introHello,
    required this.introHelloMessage,
    required this.introDistributed,
    required this.introDistributedMessage,
    required this.introOpen,
    required this.introOpenMessage,
    required this.inroTrading,
    required this.introTradingMessage,
    required this.introFast,
    required this.introFastMessage,
  });
}
