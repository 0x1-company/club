import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:club/entity/tx.dart';
import 'package:riverpod/riverpod.dart';

final txStreamProvider = StreamProvider.family<List<Tx>, String>(
  (ref, address) => FirebaseFirestore.instance
      .collection('/transactions')
      .where('userAddress', isEqualTo: address)
      .snapshots()
      .map((d) => d.docs.map((d) => Tx.fromJson(d.data())).toList()),
);

final timelineStreamProvider = StreamProvider.family<List<Tx>, List<String>>(
  (ref, ids) => FirebaseFirestore.instance
      .collection('/transactions')
      .where('userAddress', arrayContainsAny: ids)
      .snapshots()
      .map((d) => d.docs.map((d) => Tx.fromJson(d.data())).toList()),
);
