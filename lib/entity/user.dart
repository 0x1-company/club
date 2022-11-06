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
  User._();
  factory User({
    @Default('') String id,
    @Default('') String name, // tomokisun.byclub.in
    @Default('') String labelName, // tomokisun
    @Default('') String address,
    Package? packageInfo,
  }) = _User;
  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  bool get isOnboard => name.isEmpty || labelName.isEmpty || address.isEmpty;
}
