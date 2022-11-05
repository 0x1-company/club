import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:club/entity/package.dart';

part 'user.freezed.dart';
part 'user.g.dart';

extension UserFirestoreFieldKeys on String {
  static const id = 'id';
  static const packageInfo = "packageInfo";
}

@freezed
abstract class User with _$User {
  const factory User({
    @Default('') String id,
    Package? packageInfo,
  }) = _User;
  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}
