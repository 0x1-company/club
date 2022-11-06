// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tx.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Tx _$$_TxFromJson(Map<String, dynamic> json) => _$_Tx(
      userAddress: json['userAddress'] as String? ?? '',
      blockSignedAt: json['blockSignedAt'] as String? ?? '',
      txHash: json['txHash'] as String? ?? '',
      fromAddress: json['fromAddress'] as String? ?? '',
      toAddress: json['toAddress'] as String? ?? '',
      value: json['value'] as String? ?? '',
      logEvents: (json['logEvents'] as List<dynamic>?)
              ?.map((e) => TxLogEvent.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$_TxToJson(_$_Tx instance) => <String, dynamic>{
      'userAddress': instance.userAddress,
      'blockSignedAt': instance.blockSignedAt,
      'txHash': instance.txHash,
      'fromAddress': instance.fromAddress,
      'toAddress': instance.toAddress,
      'value': instance.value,
      'logEvents': instance.logEvents,
    };

_$_TxLogEvent _$$_TxLogEventFromJson(Map<String, dynamic> json) =>
    _$_TxLogEvent(
      senderName: json['senderName'] as String? ?? '',
      senderAddress: json['senderAddress'] as String? ?? '',
      decoded: json['decoded'] == null
          ? null
          : TxDecoded.fromJson(json['decoded'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_TxLogEventToJson(_$_TxLogEvent instance) =>
    <String, dynamic>{
      'senderName': instance.senderName,
      'senderAddress': instance.senderAddress,
      'decoded': instance.decoded,
    };

_$_TxDecoded _$$_TxDecodedFromJson(Map<String, dynamic> json) => _$_TxDecoded(
      name: json['name'] as String? ?? '',
      signature: json['signature'] as String? ?? '',
      params: (json['params'] as List<dynamic>?)
              ?.map((e) => TxParam.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$_TxDecodedToJson(_$_TxDecoded instance) =>
    <String, dynamic>{
      'name': instance.name,
      'signature': instance.signature,
      'params': instance.params,
    };

_$_TxParam _$$_TxParamFromJson(Map<String, dynamic> json) => _$_TxParam(
      name: json['name'] as String? ?? '',
      type: json['type'] as String? ?? '',
      value: json['value'] as String? ?? '',
      decoded: json['decoded'] as bool,
      indexed: json['indexed'] as bool,
    );

Map<String, dynamic> _$$_TxParamToJson(_$_TxParam instance) =>
    <String, dynamic>{
      'name': instance.name,
      'type': instance.type,
      'value': instance.value,
      'decoded': instance.decoded,
      'indexed': instance.indexed,
    };
