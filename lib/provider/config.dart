import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:club/entity/config.dart';
import 'package:riverpod/riverpod.dart';

final configStreamProvider = StreamProvider<Config>(
  (ref) => FirebaseFirestore.instance
      .doc('/globals/config')
      .snapshots()
      .map((d) => d.data() as Map<String, dynamic>)
      .map((d) => Config.fromJson(d)),
);
