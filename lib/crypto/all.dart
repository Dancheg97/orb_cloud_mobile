import 'private.dart';
import 'public.dart';
import 'pair.dart';

class Keys {
  late String allKeysString;
  late KeyPair personal, message;

  Keys.fromSingleString({
    required String multiKeyStirng,
  }) {
    var keysListToCheck = multiKeyStirng.split('|');
    if (keysListToCheck.length != 4) {
      throw Exception(
        'Impossible to from keys from a string with wrong length',
      );
    }
    this.personal = KeyPair(
      private: Private.fromPEM(pem: keysListToCheck[0]),
      public: Public.fromPEM(pem: keysListToCheck[1]),
    );
    this.message = KeyPair(
      private: Private.fromPEM(pem: keysListToCheck[2]),
      public: Public.fromPEM(pem: keysListToCheck[3]),
    );
    this.allKeysString = multiKeyStirng;
  }

  Keys.fromKeys({
    required Private personalPrivate,
    required Public personalPublic,
    required Private messagePrivate,
    required Public messagePublic,
  }) {
    this.personal = KeyPair(
      private: personalPrivate,
      public: personalPublic,
    );
    this.message = KeyPair(
      private: messagePrivate,
      public: messagePublic,
    );
    this.allKeysString = [
      personalPrivate.pem,
      personalPublic.pem,
      messagePrivate.pem,
      messagePublic.pem,
    ].join('|');
  }

  /// highly reccomend to wrap this method in async function, cuz its long
  Keys.generate() {
    this.personal = KeyPair.generate(4096);
    this.message = KeyPair.generate(2048);
    this.allKeysString = [
      this.personal.private.pem,
      this.personal.public.pem,
      this.message.private.pem,
      this.message.public.pem,
    ].join('|');
  }
}
