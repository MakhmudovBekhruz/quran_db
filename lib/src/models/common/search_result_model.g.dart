// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_result_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SearchResultModelImpl _$$SearchResultModelImplFromJson(
        Map<String, dynamic> json) =>
    _$SearchResultModelImpl(
      type: $enumDecode(_$SearchResultTypeEnumMap, json['type']),
      surahNumber: (json['surahNumber'] as num).toInt(),
      ayahNumber: (json['ayahNumber'] as num?)?.toInt(),
      matchedText: json['matchedText'] as String,
      fullText: json['fullText'] as String,
      matchStartIndex: (json['matchStartIndex'] as num).toInt(),
      matchEndIndex: (json['matchEndIndex'] as num).toInt(),
      contextBefore: json['contextBefore'] as String,
      contextAfter: json['contextAfter'] as String,
    );

Map<String, dynamic> _$$SearchResultModelImplToJson(
        _$SearchResultModelImpl instance) =>
    <String, dynamic>{
      'type': _$SearchResultTypeEnumMap[instance.type]!,
      'surahNumber': instance.surahNumber,
      'ayahNumber': instance.ayahNumber,
      'matchedText': instance.matchedText,
      'fullText': instance.fullText,
      'matchStartIndex': instance.matchStartIndex,
      'matchEndIndex': instance.matchEndIndex,
      'contextBefore': instance.contextBefore,
      'contextAfter': instance.contextAfter,
    };

const _$SearchResultTypeEnumMap = {
  SearchResultType.ayah: 'ayah',
  SearchResultType.surah: 'surah',
};
