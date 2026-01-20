// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'localized_surah_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LocalizedSurahModelImpl _$$LocalizedSurahModelImplFromJson(
        Map<String, dynamic> json) =>
    _$LocalizedSurahModelImpl(
      number: (json['number'] as num).toInt(),
      nameArabic: json['nameArabic'] as String,
      name: json['name'] as String,
      meaning: json['meaning'] as String,
      versesCount: (json['versesCount'] as num).toInt(),
      pageStart: (json['pageStart'] as num).toInt(),
    );

Map<String, dynamic> _$$LocalizedSurahModelImplToJson(
        _$LocalizedSurahModelImpl instance) =>
    <String, dynamic>{
      'number': instance.number,
      'nameArabic': instance.nameArabic,
      'name': instance.name,
      'meaning': instance.meaning,
      'versesCount': instance.versesCount,
      'pageStart': instance.pageStart,
    };
