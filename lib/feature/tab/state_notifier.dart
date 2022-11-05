import 'package:riverpod/riverpod.dart';
import 'package:club/feature/tab/async_action.dart';
import 'package:club/feature/tab/state.codegen.dart';

final tabStateNotifierProvider =
    StateNotifierProvider<TabStateNotifier, AsyncValue<TabState>>(
  (ref) => TabStateNotifier(
    asyncAction: ref.read(tabAsyncActionProvider),
    initialState: ref.watch(tabStateProvider),
  ),
);

class TabStateNotifier extends StateNotifier<AsyncValue<TabState>> {
  final TabAsyncAction asyncAction;

  TabStateNotifier({
    required this.asyncAction,
    required AsyncValue<TabState> initialState,
  }) : super(initialState);
}
