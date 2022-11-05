// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_private.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserPrivate _$$_UserPrivateFromJson(Map<String, dynamic> json) =>
    _$_UserPrivate(
      id: json['id'] as String? ?? '',
      packageInfo: json['packageInfo'] == null
          ? null
          : Package.fromJson(json['packageInfo'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_UserPrivateToJson(_$_UserPrivate instance) =>
    <String, dynamic>{
      'id': instance.id,
      'packageInfo': instance.packageInfo,
    };
