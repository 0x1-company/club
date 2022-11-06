import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:club/database/database.dart';
import 'package:club/entity/user.dart';
import 'package:riverpod/riverpod.dart';

final userDatastoreProvider = Provider(
  (ref) => UserDatastore(
    ref.watch(databaseProvider),
  ),
);

class UserDatastore {
  final DatabaseConnection _database;

  UserDatastore(this._database);

  Future<void> record(String id) {
    return _database.userReference().set({
      'id': id,
    }, SetOptions(merge: true));
  }

  Future<void> setAddress(String address) {
    return _database
        .userReference()
        .set({'address': address}, SetOptions(merge: true));
  }

  Future<User> name(String name) {
    return _database
        .users()
        .where('name', isEqualTo: name)
        .get()
        .then((value) => User.fromJson(value as Map<String, dynamic>));
  }

  Future<User> address(String address) {
    return _database
        .users()
        .where('name', isEqualTo: name)
        .get()
        .then((value) => User.fromJson(value as Map<String, dynamic>));
  }
}
