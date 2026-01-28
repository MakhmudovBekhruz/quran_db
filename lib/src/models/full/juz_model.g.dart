// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'juz_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$JuzModelImpl _$$JuzModelImplFromJson(Map<String, dynamic> json) =>
    _$JuzModelImpl(
      number: (json['number'] as num).toInt(),
      nameAr: json['nameAr'] as String,
      nameEn: json['nameEn'] as String,
      startSurahNumber: (json['startSurahNumber'] as num).toInt(),
      startAyahNumber: (json['startAyahNumber'] as num).toInt(),
      endSurahNumber: (json['endSurahNumber'] as num).toInt(),
      endAyahNumber: (json['endAyahNumber'] as num).toInt(),
      pageStart: (json['pageStart'] as num).toInt(),
    );

Map<String, dynamic> _$$JuzModelImplToJson(_$JuzModelImpl instance) =>
    <String, dynamic>{
      'number': instance.number,
      'nameAr': instance.nameAr,
      'nameEn': instance.nameEn,
      'startSurahNumber': instance.startSurahNumber,
      'startAyahNumber': instance.startAyahNumber,
      'endSurahNumber': instance.endSurahNumber,
      'endAyahNumber': instance.endAyahNumber,
      'pageStart': instance.pageStart,
    };
