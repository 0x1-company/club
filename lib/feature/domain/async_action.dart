import 'package:club/datastore/domain.dart';
import 'package:riverpod/riverpod.dart';

final domainAsyncActionProvider = Provider(
  (ref) => DomainAsyncAction(
    ref.watch(domainDatastoreProvider),
  ),
);

class DomainAsyncAction {
  final DomainDatastore _domainDatastore;

  DomainAsyncAction(this._domainDatastore);

  Future<void> register(String labelName) {
    return _domainDatastore.register(labelName);
  }
}
