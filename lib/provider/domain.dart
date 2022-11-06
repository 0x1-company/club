import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:riverpod/riverpod.dart';

final domainAvailableProvider = FutureProvider.family<bool, String>(
  (ref, labelName) => FirebaseFirestore.instance
      .collection('/users')
      .where('labelName', isEqualTo: labelName)
      .get()
      .then((value) => value.docs.isEmpty),
);
