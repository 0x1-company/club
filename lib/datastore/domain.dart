import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:club/database/database.dart';
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
        .users()
        .where('labelName', isEqualTo: labelName)
        .get()
        .then((value) => value.docs.isEmpty);
  }

  Future<void> register(String labelName) {
    return _database.userReference().set({
      'name': '$labelName.byclub.in',
      'labelName': labelName,
    }, SetOptions(merge: true));
  }
}
