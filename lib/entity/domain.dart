import 'package:freezed_annotation/freezed_annotation.dart';

part 'domain.g.dart';
part 'domain.freezed.dart';

@freezed
class Domain with _$Domain {
  factory Domain({
    required String name, // tomokisun.byclub.in
    required String labelName, // tomokisun
    required String address,
  }) = _Domain;
  Domain._();

  factory Domain.fromJson(Map<String, dynamic> json) => _$DomainFromJson(json);
}
