import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:club/entity/package.dart';

part 'user_private.freezed.dart';
part 'user_private.g.dart';

extension UserPrivateFirestoreFieldKeys on String {
  static const id = 'id';
  static const packageInfo = "packageInfo";
}

@freezed
abstract class UserPrivate with _$UserPrivate {
  const factory UserPrivate({
    @Default('') String id,
    Package? packageInfo,
  }) = _UserPrivate;
  factory UserPrivate.fromJson(Map<String, dynamic> json) =>
      _$UserPrivateFromJson(json);
}
