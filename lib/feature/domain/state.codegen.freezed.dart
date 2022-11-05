// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'state.codegen.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$DomainState {
  String get labelName => throw _privateConstructorUsedError;
  AsyncValue<bool> get isAvailable => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DomainStateCopyWith<DomainState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DomainStateCopyWith<$Res> {
  factory $DomainStateCopyWith(
          DomainState value, $Res Function(DomainState) then) =
      _$DomainStateCopyWithImpl<$Res, DomainState>;
  @useResult
  $Res call({String labelName, AsyncValue<bool> isAvailable});
}

/// @nodoc
class _$DomainStateCopyWithImpl<$Res, $Val extends DomainState>
    implements $DomainStateCopyWith<$Res> {
  _$DomainStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? labelName = null,
    Object? isAvailable = null,
  }) {
    return _then(_value.copyWith(
      labelName: null == labelName
          ? _value.labelName
          : labelName // ignore: cast_nullable_to_non_nullable
              as String,
      isAvailable: null == isAvailable
          ? _value.isAvailable
          : isAvailable // ignore: cast_nullable_to_non_nullable
              as AsyncValue<bool>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DomainStateCopyWith<$Res>
    implements $DomainStateCopyWith<$Res> {
  factory _$$_DomainStateCopyWith(
          _$_DomainState value, $Res Function(_$_DomainState) then) =
      __$$_DomainStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String labelName, AsyncValue<bool> isAvailable});
}

/// @nodoc
class __$$_DomainStateCopyWithImpl<$Res>
    extends _$DomainStateCopyWithImpl<$Res, _$_DomainState>
    implements _$$_DomainStateCopyWith<$Res> {
  __$$_DomainStateCopyWithImpl(
      _$_DomainState _value, $Res Function(_$_DomainState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? labelName = null,
    Object? isAvailable = null,
  }) {
    return _then(_$_DomainState(
      labelName: null == labelName
          ? _value.labelName
          : labelName // ignore: cast_nullable_to_non_nullable
              as String,
      isAvailable: null == isAvailable
          ? _value.isAvailable
          : isAvailable // ignore: cast_nullable_to_non_nullable
              as AsyncValue<bool>,
    ));
  }
}

/// @nodoc

class _$_DomainState extends _DomainState {
  _$_DomainState({required this.labelName, required this.isAvailable})
      : super._();

  @override
  final String labelName;
  @override
  final AsyncValue<bool> isAvailable;

  @override
  String toString() {
    return 'DomainState(labelName: $labelName, isAvailable: $isAvailable)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DomainState &&
            (identical(other.labelName, labelName) ||
                other.labelName == labelName) &&
            (identical(other.isAvailable, isAvailable) ||
                other.isAvailable == isAvailable));
  }

  @override
  int get hashCode => Object.hash(runtimeType, labelName, isAvailable);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DomainStateCopyWith<_$_DomainState> get copyWith =>
      __$$_DomainStateCopyWithImpl<_$_DomainState>(this, _$identity);
}

abstract class _DomainState extends DomainState {
  factory _DomainState(
      {required final String labelName,
      required final AsyncValue<bool> isAvailable}) = _$_DomainState;
  _DomainState._() : super._();

  @override
  String get labelName;
  @override
  AsyncValue<bool> get isAvailable;
  @override
  @JsonKey(ignore: true)
  _$$_DomainStateCopyWith<_$_DomainState> get copyWith =>
      throw _privateConstructorUsedError;
}
