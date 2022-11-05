import 'package:club/database/database.dart';
import 'package:club/entity/domain.dart';
import 'package:riverpod/riverpod.dart';

final domainDatastoreProvider = Provider(
  (ref) => DomainDatastore(
    ref.watch(databaseProvider),
  ),
);

class DomainDatastore {
  final DatabaseConnection _database;

  DomainDatastore(this._database);

  Future<bool> isAvailable(String labelName) {
    return _database
        .domainReference()
        .where('labelName', isEqualTo: labelName)
        .get()
        .then((value) => value.docs.isEmpty);
  }

  Future<void> register(String labelName, String address) {
    final domain = Domain(
      name: '$labelName.byclub.in',
      labelName: labelName,
      address: address,
    );
    return _database.domainReference().add(domain);
  }

  Future<String> address(String name) {
    return _database
        .domainReference()
        .where('name', isEqualTo: name)
        .get()
        .then((value) => Domain.fromJson(value as Map<String, dynamic>))
        .then((domain) => domain.address);
  }

  Future<String> name(String address) {
    return _database
        .domainReference()
        .where('name', isEqualTo: name)
        .get()
        .then((value) => Domain.fromJson(value as Map<String, dynamic>))
        .then((domain) => domain.name);
  }
}
