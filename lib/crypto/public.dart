import 'dart:convert';
import 'dart:typed_data';
import 'package:basic_utils/basic_utils.dart';

class Public {
  late String pem;
  late Uint8List bytes;

  Public.fromBytes({required Uint8List bytes}) {
    var key = CryptoUtils.rsaPublicKeyFromDERBytesPkcs1(bytes);
    pem = CryptoUtils.encodeRSAPublicKeyToPem(key);
  }

  Public.fromPEM({required String pem}) {
    bytes = CryptoUtils.getBytesFromPEMString(pem);
  }

  Uint8List getAdressBytes() {
    return Digest('SHA-512').process(bytes);
  }

  String getAdressBase64() {
    var adress = Digest('SHA-512').process(bytes);
    return base64.encode(adress);
  }

  Future<String> encrypt(String message) async {
    var key = CryptoUtils.rsaPublicKeyFromDERBytesPkcs1(bytes);
    var encrypted = CryptoUtils.rsaEncrypt(message, key);
    return encrypted;
  }
}
