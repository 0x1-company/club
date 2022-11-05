import 'package:riverpod/riverpod.dart';

final tabIndexStateNotifierProvider =
    StateNotifierProvider<TabIndexStateNotifier, int>(
  (ref) => TabIndexStateNotifier(1),
);

class TabIndexStateNotifier extends StateNotifier<int> {
  TabIndexStateNotifier(
    int initialState,
  ) : super(initialState);

  set(int index) {
    if (state != index) {
      state = index;
    }
  }
}
