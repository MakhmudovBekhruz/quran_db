// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'quran_line_word_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$QuranLineWordModelImpl _$$QuranLineWordModelImplFromJson(
        Map<String, dynamic> json) =>
    _$QuranLineWordModelImpl(
      id: (json['id'] as num).toInt(),
      location: json['location'] as String,
      word: json['word'] as String,
      qocV1: json['qocV1'] as String,
      qocV2: json['qocV2'] as String,
      lineId: (json['lineId'] as num).toInt(),
    );

Map<String, dynamic> _$$QuranLineWordModelImplToJson(
        _$QuranLineWordModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'location': instance.location,
      'word': instance.word,
      'qocV1': instance.qocV1,
      'qocV2': instance.qocV2,
      'lineId': instance.lineId,
    };
