// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'tx.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Tx _$TxFromJson(Map<String, dynamic> json) {
  return _Tx.fromJson(json);
}

/// @nodoc
mixin _$Tx {
  String get userAddress => throw _privateConstructorUsedError;
  String get blockSignedAt => throw _privateConstructorUsedError;
  String get txHash => throw _privateConstructorUsedError;
  String get fromAddress => throw _privateConstructorUsedError;
  String get toAddress => throw _privateConstructorUsedError;
  String get value => throw _privateConstructorUsedError;
  List<TxLogEvent> get logEvents => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TxCopyWith<Tx> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TxCopyWith<$Res> {
  factory $TxCopyWith(Tx value, $Res Function(Tx) then) =
      _$TxCopyWithImpl<$Res, Tx>;
  @useResult
  $Res call(
      {String userAddress,
      String blockSignedAt,
      String txHash,
      String fromAddress,
      String toAddress,
      String value,
      List<TxLogEvent> logEvents});
}

/// @nodoc
class _$TxCopyWithImpl<$Res, $Val extends Tx> implements $TxCopyWith<$Res> {
  _$TxCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userAddress = null,
    Object? blockSignedAt = null,
    Object? txHash = null,
    Object? fromAddress = null,
    Object? toAddress = null,
    Object? value = null,
    Object? logEvents = null,
  }) {
    return _then(_value.copyWith(
      userAddress: null == userAddress
          ? _value.userAddress
          : userAddress // ignore: cast_nullable_to_non_nullable
              as String,
      blockSignedAt: null == blockSignedAt
          ? _value.blockSignedAt
          : blockSignedAt // ignore: cast_nullable_to_non_nullable
              as String,
      txHash: null == txHash
          ? _value.txHash
          : txHash // ignore: cast_nullable_to_non_nullable
              as String,
      fromAddress: null == fromAddress
          ? _value.fromAddress
          : fromAddress // ignore: cast_nullable_to_non_nullable
              as String,
      toAddress: null == toAddress
          ? _value.toAddress
          : toAddress // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
      logEvents: null == logEvents
          ? _value.logEvents
          : logEvents // ignore: cast_nullable_to_non_nullable
              as List<TxLogEvent>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TxCopyWith<$Res> implements $TxCopyWith<$Res> {
  factory _$$_TxCopyWith(_$_Tx value, $Res Function(_$_Tx) then) =
      __$$_TxCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String userAddress,
      String blockSignedAt,
      String txHash,
      String fromAddress,
      String toAddress,
      String value,
      List<TxLogEvent> logEvents});
}

/// @nodoc
class __$$_TxCopyWithImpl<$Res> extends _$TxCopyWithImpl<$Res, _$_Tx>
    implements _$$_TxCopyWith<$Res> {
  __$$_TxCopyWithImpl(_$_Tx _value, $Res Function(_$_Tx) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userAddress = null,
    Object? blockSignedAt = null,
    Object? txHash = null,
    Object? fromAddress = null,
    Object? toAddress = null,
    Object? value = null,
    Object? logEvents = null,
  }) {
    return _then(_$_Tx(
      userAddress: null == userAddress
          ? _value.userAddress
          : userAddress // ignore: cast_nullable_to_non_nullable
              as String,
      blockSignedAt: null == blockSignedAt
          ? _value.blockSignedAt
          : blockSignedAt // ignore: cast_nullable_to_non_nullable
              as String,
      txHash: null == txHash
          ? _value.txHash
          : txHash // ignore: cast_nullable_to_non_nullable
              as String,
      fromAddress: null == fromAddress
          ? _value.fromAddress
          : fromAddress // ignore: cast_nullable_to_non_nullable
              as String,
      toAddress: null == toAddress
          ? _value.toAddress
          : toAddress // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
      logEvents: null == logEvents
          ? _value._logEvents
          : logEvents // ignore: cast_nullable_to_non_nullable
              as List<TxLogEvent>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Tx extends _Tx with DiagnosticableTreeMixin {
  _$_Tx(
      {this.userAddress = '',
      this.blockSignedAt = '',
      this.txHash = '',
      this.fromAddress = '',
      this.toAddress = '',
      this.value = '',
      final List<TxLogEvent> logEvents = const []})
      : _logEvents = logEvents,
        super._();

  factory _$_Tx.fromJson(Map<String, dynamic> json) => _$$_TxFromJson(json);

  @override
  @JsonKey()
  final String userAddress;
  @override
  @JsonKey()
  final String blockSignedAt;
  @override
  @JsonKey()
  final String txHash;
  @override
  @JsonKey()
  final String fromAddress;
  @override
  @JsonKey()
  final String toAddress;
  @override
  @JsonKey()
  final String value;
  final List<TxLogEvent> _logEvents;
  @override
  @JsonKey()
  List<TxLogEvent> get logEvents {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_logEvents);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Tx(userAddress: $userAddress, blockSignedAt: $blockSignedAt, txHash: $txHash, fromAddress: $fromAddress, toAddress: $toAddress, value: $value, logEvents: $logEvents)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Tx'))
      ..add(DiagnosticsProperty('userAddress', userAddress))
      ..add(DiagnosticsProperty('blockSignedAt', blockSignedAt))
      ..add(DiagnosticsProperty('txHash', txHash))
      ..add(DiagnosticsProperty('fromAddress', fromAddress))
      ..add(DiagnosticsProperty('toAddress', toAddress))
      ..add(DiagnosticsProperty('value', value))
      ..add(DiagnosticsProperty('logEvents', logEvents));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Tx &&
            (identical(other.userAddress, userAddress) ||
                other.userAddress == userAddress) &&
            (identical(other.blockSignedAt, blockSignedAt) ||
                other.blockSignedAt == blockSignedAt) &&
            (identical(other.txHash, txHash) || other.txHash == txHash) &&
            (identical(other.fromAddress, fromAddress) ||
                other.fromAddress == fromAddress) &&
            (identical(other.toAddress, toAddress) ||
                other.toAddress == toAddress) &&
            (identical(other.value, value) || other.value == value) &&
            const DeepCollectionEquality()
                .equals(other._logEvents, _logEvents));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      userAddress,
      blockSignedAt,
      txHash,
      fromAddress,
      toAddress,
      value,
      const DeepCollectionEquality().hash(_logEvents));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TxCopyWith<_$_Tx> get copyWith =>
      __$$_TxCopyWithImpl<_$_Tx>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TxToJson(
      this,
    );
  }
}

abstract class _Tx extends Tx {
  factory _Tx(
      {final String userAddress,
      final String blockSignedAt,
      final String txHash,
      final String fromAddress,
      final String toAddress,
      final String value,
      final List<TxLogEvent> logEvents}) = _$_Tx;
  _Tx._() : super._();

  factory _Tx.fromJson(Map<String, dynamic> json) = _$_Tx.fromJson;

  @override
  String get userAddress;
  @override
  String get blockSignedAt;
  @override
  String get txHash;
  @override
  String get fromAddress;
  @override
  String get toAddress;
  @override
  String get value;
  @override
  List<TxLogEvent> get logEvents;
  @override
  @JsonKey(ignore: true)
  _$$_TxCopyWith<_$_Tx> get copyWith => throw _privateConstructorUsedError;
}

TxLogEvent _$TxLogEventFromJson(Map<String, dynamic> json) {
  return _TxLogEvent.fromJson(json);
}

/// @nodoc
mixin _$TxLogEvent {
  String get senderName => throw _privateConstructorUsedError;
  String get senderAddress => throw _privateConstructorUsedError;
  TxDecoded? get decoded => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TxLogEventCopyWith<TxLogEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TxLogEventCopyWith<$Res> {
  factory $TxLogEventCopyWith(
          TxLogEvent value, $Res Function(TxLogEvent) then) =
      _$TxLogEventCopyWithImpl<$Res, TxLogEvent>;
  @useResult
  $Res call({String senderName, String senderAddress, TxDecoded? decoded});

  $TxDecodedCopyWith<$Res>? get decoded;
}

/// @nodoc
class _$TxLogEventCopyWithImpl<$Res, $Val extends TxLogEvent>
    implements $TxLogEventCopyWith<$Res> {
  _$TxLogEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? senderName = null,
    Object? senderAddress = null,
    Object? decoded = freezed,
  }) {
    return _then(_value.copyWith(
      senderName: null == senderName
          ? _value.senderName
          : senderName // ignore: cast_nullable_to_non_nullable
              as String,
      senderAddress: null == senderAddress
          ? _value.senderAddress
          : senderAddress // ignore: cast_nullable_to_non_nullable
              as String,
      decoded: freezed == decoded
          ? _value.decoded
          : decoded // ignore: cast_nullable_to_non_nullable
              as TxDecoded?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $TxDecodedCopyWith<$Res>? get decoded {
    if (_value.decoded == null) {
      return null;
    }

    return $TxDecodedCopyWith<$Res>(_value.decoded!, (value) {
      return _then(_value.copyWith(decoded: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_TxLogEventCopyWith<$Res>
    implements $TxLogEventCopyWith<$Res> {
  factory _$$_TxLogEventCopyWith(
          _$_TxLogEvent value, $Res Function(_$_TxLogEvent) then) =
      __$$_TxLogEventCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String senderName, String senderAddress, TxDecoded? decoded});

  @override
  $TxDecodedCopyWith<$Res>? get decoded;
}

/// @nodoc
class __$$_TxLogEventCopyWithImpl<$Res>
    extends _$TxLogEventCopyWithImpl<$Res, _$_TxLogEvent>
    implements _$$_TxLogEventCopyWith<$Res> {
  __$$_TxLogEventCopyWithImpl(
      _$_TxLogEvent _value, $Res Function(_$_TxLogEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? senderName = null,
    Object? senderAddress = null,
    Object? decoded = freezed,
  }) {
    return _then(_$_TxLogEvent(
      senderName: null == senderName
          ? _value.senderName
          : senderName // ignore: cast_nullable_to_non_nullable
              as String,
      senderAddress: null == senderAddress
          ? _value.senderAddress
          : senderAddress // ignore: cast_nullable_to_non_nullable
              as String,
      decoded: freezed == decoded
          ? _value.decoded
          : decoded // ignore: cast_nullable_to_non_nullable
              as TxDecoded?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TxLogEvent extends _TxLogEvent with DiagnosticableTreeMixin {
  _$_TxLogEvent({this.senderName = '', this.senderAddress = '', this.decoded})
      : super._();

  factory _$_TxLogEvent.fromJson(Map<String, dynamic> json) =>
      _$$_TxLogEventFromJson(json);

  @override
  @JsonKey()
  final String senderName;
  @override
  @JsonKey()
  final String senderAddress;
  @override
  final TxDecoded? decoded;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TxLogEvent(senderName: $senderName, senderAddress: $senderAddress, decoded: $decoded)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TxLogEvent'))
      ..add(DiagnosticsProperty('senderName', senderName))
      ..add(DiagnosticsProperty('senderAddress', senderAddress))
      ..add(DiagnosticsProperty('decoded', decoded));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TxLogEvent &&
            (identical(other.senderName, senderName) ||
                other.senderName == senderName) &&
            (identical(other.senderAddress, senderAddress) ||
                other.senderAddress == senderAddress) &&
            (identical(other.decoded, decoded) || other.decoded == decoded));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, senderName, senderAddress, decoded);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TxLogEventCopyWith<_$_TxLogEvent> get copyWith =>
      __$$_TxLogEventCopyWithImpl<_$_TxLogEvent>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TxLogEventToJson(
      this,
    );
  }
}

abstract class _TxLogEvent extends TxLogEvent {
  factory _TxLogEvent(
      {final String senderName,
      final String senderAddress,
      final TxDecoded? decoded}) = _$_TxLogEvent;
  _TxLogEvent._() : super._();

  factory _TxLogEvent.fromJson(Map<String, dynamic> json) =
      _$_TxLogEvent.fromJson;

  @override
  String get senderName;
  @override
  String get senderAddress;
  @override
  TxDecoded? get decoded;
  @override
  @JsonKey(ignore: true)
  _$$_TxLogEventCopyWith<_$_TxLogEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

TxDecoded _$TxDecodedFromJson(Map<String, dynamic> json) {
  return _TxDecoded.fromJson(json);
}

/// @nodoc
mixin _$TxDecoded {
  String get name => throw _privateConstructorUsedError;
  String get signature => throw _privateConstructorUsedError;
  List<TxParam> get params => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TxDecodedCopyWith<TxDecoded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TxDecodedCopyWith<$Res> {
  factory $TxDecodedCopyWith(TxDecoded value, $Res Function(TxDecoded) then) =
      _$TxDecodedCopyWithImpl<$Res, TxDecoded>;
  @useResult
  $Res call({String name, String signature, List<TxParam> params});
}

/// @nodoc
class _$TxDecodedCopyWithImpl<$Res, $Val extends TxDecoded>
    implements $TxDecodedCopyWith<$Res> {
  _$TxDecodedCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? signature = null,
    Object? params = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      signature: null == signature
          ? _value.signature
          : signature // ignore: cast_nullable_to_non_nullable
              as String,
      params: null == params
          ? _value.params
          : params // ignore: cast_nullable_to_non_nullable
              as List<TxParam>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TxDecodedCopyWith<$Res> implements $TxDecodedCopyWith<$Res> {
  factory _$$_TxDecodedCopyWith(
          _$_TxDecoded value, $Res Function(_$_TxDecoded) then) =
      __$$_TxDecodedCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String signature, List<TxParam> params});
}

/// @nodoc
class __$$_TxDecodedCopyWithImpl<$Res>
    extends _$TxDecodedCopyWithImpl<$Res, _$_TxDecoded>
    implements _$$_TxDecodedCopyWith<$Res> {
  __$$_TxDecodedCopyWithImpl(
      _$_TxDecoded _value, $Res Function(_$_TxDecoded) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? signature = null,
    Object? params = null,
  }) {
    return _then(_$_TxDecoded(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      signature: null == signature
          ? _value.signature
          : signature // ignore: cast_nullable_to_non_nullable
              as String,
      params: null == params
          ? _value._params
          : params // ignore: cast_nullable_to_non_nullable
              as List<TxParam>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TxDecoded extends _TxDecoded with DiagnosticableTreeMixin {
  _$_TxDecoded(
      {this.name = '',
      this.signature = '',
      final List<TxParam> params = const []})
      : _params = params,
        super._();

  factory _$_TxDecoded.fromJson(Map<String, dynamic> json) =>
      _$$_TxDecodedFromJson(json);

  @override
  @JsonKey()
  final String name;
  @override
  @JsonKey()
  final String signature;
  final List<TxParam> _params;
  @override
  @JsonKey()
  List<TxParam> get params {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_params);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TxDecoded(name: $name, signature: $signature, params: $params)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TxDecoded'))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('signature', signature))
      ..add(DiagnosticsProperty('params', params));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TxDecoded &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.signature, signature) ||
                other.signature == signature) &&
            const DeepCollectionEquality().equals(other._params, _params));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, signature,
      const DeepCollectionEquality().hash(_params));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TxDecodedCopyWith<_$_TxDecoded> get copyWith =>
      __$$_TxDecodedCopyWithImpl<_$_TxDecoded>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TxDecodedToJson(
      this,
    );
  }
}

abstract class _TxDecoded extends TxDecoded {
  factory _TxDecoded(
      {final String name,
      final String signature,
      final List<TxParam> params}) = _$_TxDecoded;
  _TxDecoded._() : super._();

  factory _TxDecoded.fromJson(Map<String, dynamic> json) =
      _$_TxDecoded.fromJson;

  @override
  String get name;
  @override
  String get signature;
  @override
  List<TxParam> get params;
  @override
  @JsonKey(ignore: true)
  _$$_TxDecodedCopyWith<_$_TxDecoded> get copyWith =>
      throw _privateConstructorUsedError;
}

TxParam _$TxParamFromJson(Map<String, dynamic> json) {
  return _TxParam.fromJson(json);
}

/// @nodoc
mixin _$TxParam {
  String get name => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  String get value => throw _privateConstructorUsedError;
  bool get decoded => throw _privateConstructorUsedError;
  bool get indexed => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TxParamCopyWith<TxParam> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TxParamCopyWith<$Res> {
  factory $TxParamCopyWith(TxParam value, $Res Function(TxParam) then) =
      _$TxParamCopyWithImpl<$Res, TxParam>;
  @useResult
  $Res call(
      {String name, String type, String value, bool decoded, bool indexed});
}

/// @nodoc
class _$TxParamCopyWithImpl<$Res, $Val extends TxParam>
    implements $TxParamCopyWith<$Res> {
  _$TxParamCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? type = null,
    Object? value = null,
    Object? decoded = null,
    Object? indexed = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
      decoded: null == decoded
          ? _value.decoded
          : decoded // ignore: cast_nullable_to_non_nullable
              as bool,
      indexed: null == indexed
          ? _value.indexed
          : indexed // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TxParamCopyWith<$Res> implements $TxParamCopyWith<$Res> {
  factory _$$_TxParamCopyWith(
          _$_TxParam value, $Res Function(_$_TxParam) then) =
      __$$_TxParamCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name, String type, String value, bool decoded, bool indexed});
}

/// @nodoc
class __$$_TxParamCopyWithImpl<$Res>
    extends _$TxParamCopyWithImpl<$Res, _$_TxParam>
    implements _$$_TxParamCopyWith<$Res> {
  __$$_TxParamCopyWithImpl(_$_TxParam _value, $Res Function(_$_TxParam) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? type = null,
    Object? value = null,
    Object? decoded = null,
    Object? indexed = null,
  }) {
    return _then(_$_TxParam(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
      decoded: null == decoded
          ? _value.decoded
          : decoded // ignore: cast_nullable_to_non_nullable
              as bool,
      indexed: null == indexed
          ? _value.indexed
          : indexed // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TxParam extends _TxParam with DiagnosticableTreeMixin {
  _$_TxParam(
      {this.name = '',
      this.type = '',
      this.value = '',
      required this.decoded,
      required this.indexed})
      : super._();

  factory _$_TxParam.fromJson(Map<String, dynamic> json) =>
      _$$_TxParamFromJson(json);

  @override
  @JsonKey()
  final String name;
  @override
  @JsonKey()
  final String type;
  @override
  @JsonKey()
  final String value;
  @override
  final bool decoded;
  @override
  final bool indexed;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TxParam(name: $name, type: $type, value: $value, decoded: $decoded, indexed: $indexed)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TxParam'))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('type', type))
      ..add(DiagnosticsProperty('value', value))
      ..add(DiagnosticsProperty('decoded', decoded))
      ..add(DiagnosticsProperty('indexed', indexed));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TxParam &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.decoded, decoded) || other.decoded == decoded) &&
            (identical(other.indexed, indexed) || other.indexed == indexed));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, name, type, value, decoded, indexed);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TxParamCopyWith<_$_TxParam> get copyWith =>
      __$$_TxParamCopyWithImpl<_$_TxParam>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TxParamToJson(
      this,
    );
  }
}

abstract class _TxParam extends TxParam {
  factory _TxParam(
      {final String name,
      final String type,
      final String value,
      required final bool decoded,
      required final bool indexed}) = _$_TxParam;
  _TxParam._() : super._();

  factory _TxParam.fromJson(Map<String, dynamic> json) = _$_TxParam.fromJson;

  @override
  String get name;
  @override
  String get type;
  @override
  String get value;
  @override
  bool get decoded;
  @override
  bool get indexed;
  @override
  @JsonKey(ignore: true)
  _$$_TxParamCopyWith<_$_TxParam> get copyWith =>
      throw _privateConstructorUsedError;
}
