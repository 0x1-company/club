// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'user_private.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserPrivate _$UserPrivateFromJson(Map<String, dynamic> json) {
  return _UserPrivate.fromJson(json);
}

/// @nodoc
mixin _$UserPrivate {
  String get id => throw _privateConstructorUsedError;
  Package? get packageInfo => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserPrivateCopyWith<UserPrivate> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserPrivateCopyWith<$Res> {
  factory $UserPrivateCopyWith(
          UserPrivate value, $Res Function(UserPrivate) then) =
      _$UserPrivateCopyWithImpl<$Res, UserPrivate>;
  @useResult
  $Res call({String id, Package? packageInfo});

  $PackageCopyWith<$Res>? get packageInfo;
}

/// @nodoc
class _$UserPrivateCopyWithImpl<$Res, $Val extends UserPrivate>
    implements $UserPrivateCopyWith<$Res> {
  _$UserPrivateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? packageInfo = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      packageInfo: freezed == packageInfo
          ? _value.packageInfo
          : packageInfo // ignore: cast_nullable_to_non_nullable
              as Package?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PackageCopyWith<$Res>? get packageInfo {
    if (_value.packageInfo == null) {
      return null;
    }

    return $PackageCopyWith<$Res>(_value.packageInfo!, (value) {
      return _then(_value.copyWith(packageInfo: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_UserPrivateCopyWith<$Res>
    implements $UserPrivateCopyWith<$Res> {
  factory _$$_UserPrivateCopyWith(
          _$_UserPrivate value, $Res Function(_$_UserPrivate) then) =
      __$$_UserPrivateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, Package? packageInfo});

  @override
  $PackageCopyWith<$Res>? get packageInfo;
}

/// @nodoc
class __$$_UserPrivateCopyWithImpl<$Res>
    extends _$UserPrivateCopyWithImpl<$Res, _$_UserPrivate>
    implements _$$_UserPrivateCopyWith<$Res> {
  __$$_UserPrivateCopyWithImpl(
      _$_UserPrivate _value, $Res Function(_$_UserPrivate) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? packageInfo = freezed,
  }) {
    return _then(_$_UserPrivate(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      packageInfo: freezed == packageInfo
          ? _value.packageInfo
          : packageInfo // ignore: cast_nullable_to_non_nullable
              as Package?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UserPrivate implements _UserPrivate {
  const _$_UserPrivate({this.id = '', this.packageInfo});

  factory _$_UserPrivate.fromJson(Map<String, dynamic> json) =>
      _$$_UserPrivateFromJson(json);

  @override
  @JsonKey()
  final String id;
  @override
  final Package? packageInfo;

  @override
  String toString() {
    return 'UserPrivate(id: $id, packageInfo: $packageInfo)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserPrivate &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.packageInfo, packageInfo) ||
                other.packageInfo == packageInfo));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, packageInfo);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserPrivateCopyWith<_$_UserPrivate> get copyWith =>
      __$$_UserPrivateCopyWithImpl<_$_UserPrivate>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserPrivateToJson(
      this,
    );
  }
}

abstract class _UserPrivate implements UserPrivate {
  const factory _UserPrivate({final String id, final Package? packageInfo}) =
      _$_UserPrivate;

  factory _UserPrivate.fromJson(Map<String, dynamic> json) =
      _$_UserPrivate.fromJson;

  @override
  String get id;
  @override
  Package? get packageInfo;
  @override
  @JsonKey(ignore: true)
  _$$_UserPrivateCopyWith<_$_UserPrivate> get copyWith =>
      throw _privateConstructorUsedError;
}
