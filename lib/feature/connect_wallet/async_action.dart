import 'package:club/datastore/user.dart';
import 'package:club/service/wallet_connect.dart';
import 'package:riverpod/riverpod.dart';
import 'package:walletconnect_dart/walletconnect_dart.dart';

final connectWalletAsyncActionProvider = Provider(
  (ref) => ConnectWalletAsyncAction(
    ref.watch(userDatastoreProvider),
    ref.watch(walletConnectServiceProvider),
  ),
);

class ConnectWalletAsyncAction {
  final UserDatastore _userDatastore;
  final WalletConnectService _walletConnectService;

  ConnectWalletAsyncAction(this._userDatastore, this._walletConnectService);

  Future<void> connect(OnDisplayUriCallback onDisplayUri) async {
    final session = await _walletConnectService.connect(onDisplayUri);
    final address = session.accounts.first;

    return await _userDatastore.setAddress(address);
  }
}
