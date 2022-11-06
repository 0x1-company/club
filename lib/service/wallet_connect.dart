import 'package:riverpod/riverpod.dart';
import 'package:walletconnect_dart/walletconnect_dart.dart';

final walletConnectServiceProvider = Provider(
  (ref) => WalletConnectService(),
);

class WalletConnectService {
  final _connector = WalletConnect(
    bridge: 'https://bridge.walletconnect.org',
    clientMeta: const PeerMeta(
      name: 'club',
      description: 'club is social mobile application',
      url: 'https://byclub.in',
    ),
  );

  bool get connected => _connector.connected;

  Future<SessionStatus> connect(OnDisplayUriCallback onDisplayUri) async {
    final session = await _connector.createSession(
      chainId: 1,
      onDisplayUri: (uri) {
        print(uri);
        onDisplayUri(uri);
      },
    );

    print('accounts : ${session.accounts}');

    return session;
  }
}
