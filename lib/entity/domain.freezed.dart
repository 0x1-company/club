// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'domain.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Domain _$DomainFromJson(Map<String, dynamic> json) {
  return _Domain.fromJson(json);
}

/// @nodoc
mixin _$Domain {
  String get name => throw _privateConstructorUsedError; // tomokisun.byclub.in
  String get labelName => throw _privateConstructorUsedError; // tomokisun
  String get address => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DomainCopyWith<Domain> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DomainCopyWith<$Res> {
  factory $DomainCopyWith(Domain value, $Res Function(Domain) then) =
      _$DomainCopyWithImpl<$Res, Domain>;
  @useResult
  $Res call({String name, String labelName, String address});
}

/// @nodoc
class _$DomainCopyWithImpl<$Res, $Val extends Domain>
    implements $DomainCopyWith<$Res> {
  _$DomainCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? labelName = null,
    Object? address = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      labelName: null == labelName
          ? _value.labelName
          : labelName // ignore: cast_nullable_to_non_nullable
              as String,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DomainCopyWith<$Res> implements $DomainCopyWith<$Res> {
  factory _$$_DomainCopyWith(_$_Domain value, $Res Function(_$_Domain) then) =
      __$$_DomainCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String labelName, String address});
}

/// @nodoc
class __$$_DomainCopyWithImpl<$Res>
    extends _$DomainCopyWithImpl<$Res, _$_Domain>
    implements _$$_DomainCopyWith<$Res> {
  __$$_DomainCopyWithImpl(_$_Domain _value, $Res Function(_$_Domain) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? labelName = null,
    Object? address = null,
  }) {
    return _then(_$_Domain(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      labelName: null == labelName
          ? _value.labelName
          : labelName // ignore: cast_nullable_to_non_nullable
              as String,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Domain extends _Domain {
  _$_Domain(
      {required this.name, required this.labelName, required this.address})
      : super._();

  factory _$_Domain.fromJson(Map<String, dynamic> json) =>
      _$$_DomainFromJson(json);

  @override
  final String name;
// tomokisun.byclub.in
  @override
  final String labelName;
// tomokisun
  @override
  final String address;

  @override
  String toString() {
    return 'Domain(name: $name, labelName: $labelName, address: $address)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Domain &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.labelName, labelName) ||
                other.labelName == labelName) &&
            (identical(other.address, address) || other.address == address));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, labelName, address);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DomainCopyWith<_$_Domain> get copyWith =>
      __$$_DomainCopyWithImpl<_$_Domain>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DomainToJson(
      this,
    );
  }
}

abstract class _Domain extends Domain {
  factory _Domain(
      {required final String name,
      required final String labelName,
      required final String address}) = _$_Domain;
  _Domain._() : super._();

  factory _Domain.fromJson(Map<String, dynamic> json) = _$_Domain.fromJson;

  @override
  String get name;
  @override // tomokisun.byclub.in
  String get labelName;
  @override // tomokisun
  String get address;
  @override
  @JsonKey(ignore: true)
  _$$_DomainCopyWith<_$_Domain> get copyWith =>
      throw _privateConstructorUsedError;
}
