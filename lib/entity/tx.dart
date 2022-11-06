import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'tx.g.dart';
part 'tx.freezed.dart';

@freezed
abstract class Tx with _$Tx {
  Tx._();
  factory Tx({
    @Default('') String userAddress,
    @Default('') String blockSignedAt,
    @Default('') String txHash,
    @Default('') String fromAddress,
    @Default('') String toAddress,
    @Default('') String value,
    @Default([]) List<TxLogEvent> logEvents,
  }) = _Tx;

  factory Tx.fromJson(Map<String, dynamic> json) => _$TxFromJson(json);
}

@freezed
abstract class TxLogEvent with _$TxLogEvent {
  factory TxLogEvent({
    @Default('') String senderName,
    @Default('') String senderAddress,
    TxDecoded? decoded,
  }) = _TxLogEvent;
  TxLogEvent._();

  factory TxLogEvent.fromJson(Map<String, dynamic> json) =>
      _$TxLogEventFromJson(json);
}

@freezed
abstract class TxDecoded with _$TxDecoded {
  factory TxDecoded({
    @Default('') String name,
    @Default('') String signature,
    @Default([]) List<TxParam> params,
  }) = _TxDecoded;
  TxDecoded._();

  factory TxDecoded.fromJson(Map<String, dynamic> json) =>
      _$TxDecodedFromJson(json);
}

@freezed
abstract class TxParam with _$TxParam {
  factory TxParam({
    @Default('') String name,
    @Default('') String type,
    @Default('') String value,
    required bool decoded,
    required bool indexed,
  }) = _TxParam;
  TxParam._();

  factory TxParam.fromJson(Map<String, dynamic> json) =>
      _$TxParamFromJson(json);
}
