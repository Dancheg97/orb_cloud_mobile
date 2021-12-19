import 'dart:typed_data';
import 'dart:math';

import 'package:flutter/foundation.dart';
import 'package:pointycastle/key_generators/rsa_key_generator.dart';
import 'package:pointycastle/pointycastle.dart';
import 'package:basic_utils/basic_utils.dart';
import 'package:pointycastle/random/fortuna_random.dart';
import 'package:shared_preferences/shared_preferences.dart';

void generateKeys() async {
  var firstPair = await compute(_generateSingleKeyPair, 3976);
  var secondPair = await compute(_generateSingleKeyPair, 2149);
  var prefs = await SharedPreferences.getInstance();
  prefs.setString("persPriv", firstPair[0]);
  prefs.setString("persPub", firstPair[1]);
  prefs.setString("mesPriv", secondPair[0]);
  prefs.setString("mesPub", secondPair[1]);
}

List<String> _generateSingleKeyPair(int bitLength) {
  final secureRandom = FortunaRandom();
  final seedSource = Random.secure();
  final seeds = <int>[];
  for (var i = 0; i < 32; i++) {
    seeds.add(seedSource.nextInt(255));
  }
  secureRandom.seed(KeyParameter(Uint8List.fromList(seeds)));
  final keyGen = RSAKeyGenerator()
    ..init(
      ParametersWithRandom(
        RSAKeyGeneratorParameters(
          BigInt.parse('65537'),
          bitLength,
          64,
        ),
        secureRandom,
      ),
    );
  final pair = keyGen.generateKeyPair();
  final myPublic = pair.publicKey as RSAPublicKey;
  final myPrivate = pair.privateKey as RSAPrivateKey;
  return [
    CryptoUtils.encodeRSAPrivateKeyToPemPkcs1(myPrivate),
    CryptoUtils.encodeRSAPublicKeyToPemPkcs1(myPublic),
  ];
}
