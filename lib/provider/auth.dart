import 'package:async/async.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:riverpod/riverpod.dart';

final authStateStreamProvider = StreamProvider(
  (ref) => StreamGroup.merge(
    [
      _cacheOrAuth().asStream(),
      FirebaseAuth.instance.userChanges(),
    ],
  ),
);

Future<User?> _cacheOrAuth() async {
  final currentUser = FirebaseAuth.instance.currentUser;
  if (currentUser != null) return currentUser;

  final value = await FirebaseAuth.instance.signInAnonymously();
  return value.user;
}
