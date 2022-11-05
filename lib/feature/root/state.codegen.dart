import 'package:club/entity/version.dart';
import 'package:club/provider/config.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:club/provider/version.dart';
import 'package:riverpod/riverpod.dart';

part 'state.codegen.freezed.dart';

@freezed
class RootState with _$RootState {
  factory RootState({
    required bool isForceUpdate,
  }) = _RootState;
  RootState._();
}

final rootAsyncStateProvider =
    Provider.autoDispose<AsyncValue<RootState>>((ref) {
  final config = ref.watch(configStreamProvider);
  final version = ref.watch(versionProvider);

  final minimumSupportedAppVersion = config.value?.minimumSupportedAppVersion;
  final packageVersion = version.value;

  if (minimumSupportedAppVersion == null || packageVersion == null) {
    return const AsyncLoading();
  }

  final isForceUpdate =
      packageVersion.isLessThan(Version.parse(minimumSupportedAppVersion));

  try {
    return AsyncValue.data(RootState(
      isForceUpdate: isForceUpdate,
    ));
  } catch (error, stackTrace) {
    return AsyncValue.error(error, stackTrace);
  }
});
