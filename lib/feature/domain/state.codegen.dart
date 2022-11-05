import 'package:club/feature/domain/domain_label_name_notifier.dart';
import 'package:club/provider/domain.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod/riverpod.dart';

part 'state.codegen.freezed.dart';

@freezed
class DomainState with _$DomainState {
  factory DomainState({
    required String labelName,
    required AsyncValue<bool> isAvailable,
  }) = _DomainState;
  DomainState._();
}

final domainStateProvider = Provider<AsyncValue<DomainState>>((ref) {
  final labelName = ref.watch(domainLabelNameNotifierProvider);
  final isAvailable = ref.watch(domainAvailableProvider(labelName));

  try {
    return AsyncValue.data(DomainState(
      labelName: labelName,
      isAvailable: isAvailable,
    ));
  } catch (error, stackTrace) {
    return AsyncValue.error(error, stackTrace);
  }
});
