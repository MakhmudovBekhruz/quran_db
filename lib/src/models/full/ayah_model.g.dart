// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ayah_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AyahModelImpl _$$AyahModelImplFromJson(Map<String, dynamic> json) =>
    _$AyahModelImpl(
      id: (json['id'] as num).toInt(),
      surahId: (json['surahId'] as num).toInt(),
      ayahNumber: (json['ayahNumber'] as num).toInt(),
      textEn: json['textEn'] as String,
      textRu: json['textRu'] as String,
      textUzLat: json['textUzLat'] as String,
      textUzCyr: json['textUzCyr'] as String,
      textKk: json['textKk'] as String,
      textTg: json['textTg'] as String,
      textTr: json['textTr'] as String,
      textUr: json['textUr'] as String,
    );

Map<String, dynamic> _$$AyahModelImplToJson(_$AyahModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'surahId': instance.surahId,
      'ayahNumber': instance.ayahNumber,
      'textEn': instance.textEn,
      'textRu': instance.textRu,
      'textUzLat': instance.textUzLat,
      'textUzCyr': instance.textUzCyr,
      'textKk': instance.textKk,
      'textTg': instance.textTg,
      'textTr': instance.textTr,
      'textUr': instance.textUr,
    };
