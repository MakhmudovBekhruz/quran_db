// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'localized_juz_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LocalizedJuzModelImpl _$$LocalizedJuzModelImplFromJson(
        Map<String, dynamic> json) =>
    _$LocalizedJuzModelImpl(
      number: (json['number'] as num).toInt(),
      nameArabic: json['nameArabic'] as String,
      name: json['name'] as String,
      startSurahNumber: (json['startSurahNumber'] as num).toInt(),
      startAyahNumber: (json['startAyahNumber'] as num).toInt(),
      endSurahNumber: (json['endSurahNumber'] as num).toInt(),
      endAyahNumber: (json['endAyahNumber'] as num).toInt(),
      pageStart: (json['pageStart'] as num).toInt(),
    );

Map<String, dynamic> _$$LocalizedJuzModelImplToJson(
        _$LocalizedJuzModelImpl instance) =>
    <String, dynamic>{
      'number': instance.number,
      'nameArabic': instance.nameArabic,
      'name': instance.name,
      'startSurahNumber': instance.startSurahNumber,
      'startAyahNumber': instance.startAyahNumber,
      'endSurahNumber': instance.endSurahNumber,
      'endAyahNumber': instance.endAyahNumber,
      'pageStart': instance.pageStart,
    };
