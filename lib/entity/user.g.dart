// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_User _$$_UserFromJson(Map<String, dynamic> json) => _$_User(
      id: json['id'] as String? ?? '',
      name: json['name'] as String? ?? '',
      labelName: json['labelName'] as String? ?? '',
      address: json['address'] as String? ?? '',
      packageInfo: json['packageInfo'] == null
          ? null
          : Package.fromJson(json['packageInfo'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_UserToJson(_$_User instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'labelName': instance.labelName,
      'address': instance.address,
      'packageInfo': instance.packageInfo,
    };
