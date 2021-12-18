export 'api.pb.dart';
export 'api.pbenum.dart';
export 'api.pbgrpc.dart';
export 'api.pbjson.dart';

import 'api.pbgrpc.dart';
import 'package:grpc/grpc.dart';

final channel = ClientChannel(
  '46.138.246.106',
  port: 8080,
  options: ChannelOptions(
    credentials: const ChannelCredentials.insecure(),
    codecRegistry: CodecRegistry(
      codecs: const [
        GzipCodec(),
        IdentityCodec(),
      ],
    ),
  ),
);

final infoStub = InfoClient(
  channel,
  options: CallOptions(
    timeout: const Duration(seconds: 1),
  ),
);

final userStub = UserClient(
  channel,
  options: CallOptions(
    timeout: const Duration(seconds: 1),
  ),
);
