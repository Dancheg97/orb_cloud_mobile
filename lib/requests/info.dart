import 'dart:typed_data';

import 'package:ORBmobile/requests/info_check_name.dart';
import 'package:ORBmobile/requests/info_has_trades.dart';

/// ### InfoRequests (static class)
/// ---
/// This class operates grpc calls to network.
/// Request description can be found in `api.proto` file.
///
/// Possible requests:
/// - hasTrades
/// - userInfo
class InfoRequests {
  /// Function that is used to check name for profanity and being already used
  static Future<bool> Function(String) checkName = infoCheckName;

  /// Function that is used to check if used has trades on specific market
  static Future<bool> Function(Uint8List) hasTrades = infoHasTrades;

  
}
