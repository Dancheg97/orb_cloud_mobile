import 'dart:typed_data';
import 'package:basic_utils/basic_utils.dart';

class Private {
  late String pem;
  late Uint8List bytes;

  Private.fromBytes({required Uint8List bytes}) {
    var key = CryptoUtils.rsaPrivateKeyFromDERBytesPkcs1(bytes);
    pem = CryptoUtils.encodeRSAPrivateKeyToPemPkcs1(key);
  }

  Private.fromPEM({required String pem}) {
    bytes = CryptoUtils.getBytesFromPEMString(pem);
  }

  Uint8List intToBytes(int value) {
    return Uint8List(8)..buffer.asByteData().setInt64(0, value, Endian.little);
  }

  Future<Uint8List> signData(Uint8List data) async {
    var key = CryptoUtils.rsaPrivateKeyFromPemPkcs1(pem);
    var sign = CryptoUtils.rsaSign(key, data, algorithmName: 'SHA-512/RSA');
    return sign;
  }

  Uint8List transformListToByteArray(List<dynamic> values) {
    List<int> byteArray = [];
    values.forEach((singleListValue) {
      if (singleListValue is String) {
        var stringAsBytes = singleListValue.codeUnits;
        stringAsBytes.forEach((byte) {
          byteArray.add(byte);
        });
      }
      if (singleListValue is Uint8List) {
        singleListValue.forEach((byte) {
          byteArray.add(byte);
        });
      }
      if (singleListValue is int) {
        Uint8List intAsBytes = intToBytes(singleListValue);
        intAsBytes.forEach((byte) {
          byteArray.add(byte);
        });
      }
      List<bool> supprtedTypes = [
        singleListValue is String,
        singleListValue is Uint8List,
        singleListValue is int,
      ];
      if (!supprtedTypes.contains(true)) {
        throw Exception(
          'You are passing not supported type to operation of '
          'concatenation: ${singleListValue.runtimeType}',
        );
      }
    });
    return Uint8List.fromList(byteArray);
  }

  /// supported types: [String], [int], [Uint8List]
  Future<Uint8List> signList(List<dynamic> values) async {
    var bytes = transformListToByteArray(values);
    return await signData(bytes);
  }

  Future<String> decrypt(String encrypted) async {
    var key = CryptoUtils.rsaPrivateKeyFromDERBytesPkcs1(bytes);
    var decrypted = CryptoUtils.rsaDecrypt(encrypted, key);
    return decrypted;
  }
}
