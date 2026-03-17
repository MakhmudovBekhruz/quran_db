// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'surah_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SurahModelImpl _$$SurahModelImplFromJson(Map<String, dynamic> json) =>
    _$SurahModelImpl(
      number: (json['number'] as num).toInt(),
      nameAr: json['nameAr'] as String,
      nameEn: json['nameEn'] as String,
      nameRu: json['nameRu'] as String,
      nameUzLat: json['nameUzLat'] as String,
      nameUzCyr: json['nameUzCyr'] as String,
      nameEnMeaning: json['nameEnMeaning'] as String,
      nameRuMeaning: json['nameRuMeaning'] as String,
      nameUzLatMeaning: json['nameUzLatMeaning'] as String,
      nameUzCyrMeaning: json['nameUzCyrMeaning'] as String,
      nameKk: json['nameKk'] as String,
      nameKkMeaning: json['nameKkMeaning'] as String,
      nameTg: json['nameTg'] as String,
      nameTgMeaning: json['nameTgMeaning'] as String,
      nameTr: json['nameTr'] as String,
      nameTrMeaning: json['nameTrMeaning'] as String,
      nameUr: json['nameUr'] as String,
      nameUrMeaning: json['nameUrMeaning'] as String,
      versesCount: (json['versesCount'] as num).toInt(),
      pageStart: (json['pageStart'] as num).toInt(),
      revelationType:
          $enumDecode(_$RevelationTypeEnumMap, json['revelationType']),
    );

Map<String, dynamic> _$$SurahModelImplToJson(_$SurahModelImpl instance) =>
    <String, dynamic>{
      'number': instance.number,
      'nameAr': instance.nameAr,
      'nameEn': instance.nameEn,
      'nameRu': instance.nameRu,
      'nameUzLat': instance.nameUzLat,
      'nameUzCyr': instance.nameUzCyr,
      'nameEnMeaning': instance.nameEnMeaning,
      'nameRuMeaning': instance.nameRuMeaning,
      'nameUzLatMeaning': instance.nameUzLatMeaning,
      'nameUzCyrMeaning': instance.nameUzCyrMeaning,
      'nameKk': instance.nameKk,
      'nameKkMeaning': instance.nameKkMeaning,
      'nameTg': instance.nameTg,
      'nameTgMeaning': instance.nameTgMeaning,
      'nameTr': instance.nameTr,
      'nameTrMeaning': instance.nameTrMeaning,
      'nameUr': instance.nameUr,
      'nameUrMeaning': instance.nameUrMeaning,
      'versesCount': instance.versesCount,
      'pageStart': instance.pageStart,
      'revelationType': _$RevelationTypeEnumMap[instance.revelationType]!,
    };

const _$RevelationTypeEnumMap = {
  RevelationType.meccan: 'meccan',
  RevelationType.medinan: 'medinan',
};
