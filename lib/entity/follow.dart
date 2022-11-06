import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'follow.g.dart';
part 'follow.freezed.dart';

@freezed
class Follow with _$Follow {
  Follow._();
  factory Follow({
    required String fromAddress,
    required String toAddress,
  }) = _Follow;

  factory Follow.fromJson(Map<String, dynamic> json) => _$FollowFromJson(json);
}
