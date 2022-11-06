import 'package:club/entity/tx.dart';
import 'package:club/provider/follow.dart';
import 'package:club/provider/tx.dart';
import 'package:club/provider/user.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod/riverpod.dart';

part 'state.codegen.freezed.dart';

@freezed
class TimelineState with _$TimelineState {
  factory TimelineState({
    required List<Tx> timeline,
  }) = _TimelineState;
  TimelineState._();
}

final timelineStateProvider =
    Provider.autoDispose<AsyncValue<TimelineState>>((ref) {
  final user = ref.watch(userStreamProvider).value;
  final address = user?.address ?? '';

  final follows = ref.watch(followStreamProvider(address)).value ?? [];
  final followAddress = follows.map((e) => e.toAddress).toList();
  followAddress.add(address);
  final followsAddr = followAddress.map((d) => d.toLowerCase()).toList();
  final timelineProvider = ref.watch(txStreamProvider(address));

  if (timelineProvider.isLoading) {
    return const AsyncLoading();
  }

  final timeline = timelineProvider.value;
  if (timeline == null) {
    return const AsyncLoading();
  }

  print(followsAddr);
  print(timeline);

  try {
    return AsyncValue.data(TimelineState(
      timeline: [],
    ));
  } catch (error, stackTrace) {
    return AsyncValue.error(error, stackTrace);
  }
});
