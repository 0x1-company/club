import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:club/entity/domain.dart';
import 'package:riverpod/riverpod.dart';

final domainStreamProvider = StreamProvider<Iterable<Domain>>(
  (ref) => FirebaseFirestore.instance
      .collection('/domains')
      .snapshots()
      .map((event) => event.docs.map((e) => Domain.fromJson(e.data()))),
);

final domainAvailableProvider = FutureProvider.family<bool, String>(
  (ref, labelName) => FirebaseFirestore.instance
      .collection('/domains')
      .where('labelName', isEqualTo: labelName)
      .get()
      .then((value) => value.docs.isEmpty),
);
