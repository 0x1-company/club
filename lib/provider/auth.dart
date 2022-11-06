import 'package:async/async.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:riverpod/riverpod.dart';

final authStateStreamProvider = StreamProvider(
  (ref) => StreamGroup.merge(
    [
      _cacheOrAuth().asStream(),
      // FirebaseAuth.instance.userChanges(),
    ],
  ),
);

Future<User?> _cacheOrAuth() async {
  final currentUser = FirebaseAuth.instance.currentUser;
  print('current user $currentUser');
  if (currentUser != null) return currentUser;

  try {
    final value = await FirebaseAuth.instance.signInAnonymously();
    print('value : $value');
    return value.user;
  } catch (error) {
    print(error);
    return null;
  }
}
