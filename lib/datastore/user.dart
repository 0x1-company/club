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
