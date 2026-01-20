// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'quran_line_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$QuranLineModelImpl _$$QuranLineModelImplFromJson(Map<String, dynamic> json) =>
    _$QuranLineModelImpl(
      id: (json['id'] as num).toInt(),
      pageNumber: (json['pageNumber'] as num).toInt(),
      type: $enumDecode(_$LineTypeEnumMap, json['type']),
      verseRange: json['verseRange'] as String,
    );

Map<String, dynamic> _$$QuranLineModelImplToJson(
        _$QuranLineModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'pageNumber': instance.pageNumber,
      'type': _$LineTypeEnumMap[instance.type]!,
      'verseRange': instance.verseRange,
    };

const _$LineTypeEnumMap = {
  LineType.surahHeader: 'surahHeader',
  LineType.basmala: 'basmala',
  LineType.text: 'text',
};
