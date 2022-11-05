import 'package:club/feature/tab/tab_index_state_notifier.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod/riverpod.dart';

part 'state.codegen.freezed.dart';

@freezed
class TabState with _$TabState {
  factory TabState({
    required int currentIndex,
  }) = _TabState;
  TabState._();
}

final tabStateProvider = Provider<AsyncValue<TabState>>((ref) {
  final currentIndex = ref.watch(tabIndexStateNotifierProvider);

  try {
    return AsyncValue.data(TabState(
      currentIndex: currentIndex,
    ));
  } catch (error, stackTrace) {
    return AsyncValue.error(error, stackTrace);
  }
});
