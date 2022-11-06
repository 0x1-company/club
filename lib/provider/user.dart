import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';
import 'package:club/entity/user.dart';
import 'package:club/provider/auth.dart';
import 'package:riverpod/riverpod.dart';

DocumentReference<User> userDocumentReference(String id) {
  return FirebaseFirestore.instance.doc('/users/$id').withConverter(
        fromFirestore: (snapshot, _) {
          final user = User.fromJson(snapshot.data() as Map<String, dynamic>);
          return user.copyWith(id: snapshot.id);
        },
        toFirestore: (User value, _) => value.toJson(),
      );
}

DocumentReference userDocumentPrivateReference({required String userID}) {
  return FirebaseFirestore.instance.doc("/users/$userID/privates/$userID");
}

final userStreamProvider = StreamProvider<User?>((ref) {
  final firebaseCurrentUser = ref.watch(authStateStreamProvider);
  if (firebaseCurrentUser is AsyncLoading) return Stream.value(null);

  final firebaseCurrentUserValue = firebaseCurrentUser.value;
  if (firebaseCurrentUserValue == null) return Stream.value(null);

  debugPrint('user id: ${firebaseCurrentUserValue.uid}');
  return userDocumentReference(firebaseCurrentUserValue.uid)
      .snapshots()
      .map((event) => event.data());
});
