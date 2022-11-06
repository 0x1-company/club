import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:club/entity/follow.dart';
import 'package:riverpod/riverpod.dart';

final followStreamProvider = StreamProvider.family<List<Follow>, String>(
  (ref, address) => FirebaseFirestore.instance
      .collection('/follows')
      .where('fromAddress', isEqualTo: address)
      .snapshots()
      .map((d) => d.docs.map((d) => Follow.fromJson(d.data())).toList()),
);

final followerStreamProvider = StreamProvider.family<List<Follow>, String>(
  (ref, address) => FirebaseFirestore.instance
      .collection('/follows')
      .where('toAddress', isEqualTo: address)
      .snapshots()
      .map((d) => d.docs.map((d) => Follow.fromJson(d.data())).toList()),
);
