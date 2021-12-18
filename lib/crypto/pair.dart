import 'dart:typed_data';
import 'dart:math';

import 'package:ORBmobile/crypto/private.dart';
import 'package:ORBmobile/crypto/public.dart';
import 'package:pointycastle/key_generators/rsa_key_generator.dart';
import 'package:pointycastle/pointycastle.dart';
import 'package:basic_utils/basic_utils.dart';
import 'package:pointycastle/random/fortuna_random.dart';

class KeyPair {
  late final Private private;
  late final Public public;
  KeyPair({
    required this.private,
    required this.public,
  });
  KeyPair.generate(int bitLength) {
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
    this.private = Private.fromPEM(
      pem: CryptoUtils.encodeRSAPrivateKeyToPemPkcs1(myPrivate),
    );
    this.public = Public.fromPEM(
      pem: CryptoUtils.encodeRSAPublicKeyToPemPkcs1(myPublic),
    );
  }
}
