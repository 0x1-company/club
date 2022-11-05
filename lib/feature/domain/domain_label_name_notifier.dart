import 'package:riverpod/riverpod.dart';

final domainLabelNameNotifierProvider =
    StateNotifierProvider<DomainLabelNameNotifier, String>(
  (ref) => DomainLabelNameNotifier(''),
);

class DomainLabelNameNotifier extends StateNotifier<String> {
  DomainLabelNameNotifier(
    String initialState,
  ) : super(initialState);

  set(String labelName) {
    if (state != labelName) {
      state = labelName;
    }
  }
}
