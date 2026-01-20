// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'localized_ayah_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LocalizedAyahModelImpl _$$LocalizedAyahModelImplFromJson(
        Map<String, dynamic> json) =>
    _$LocalizedAyahModelImpl(
      id: (json['id'] as num).toInt(),
      surahNumber: (json['surahNumber'] as num).toInt(),
      ayahNumber: (json['ayahNumber'] as num).toInt(),
      text: json['text'] as String,
    );

Map<String, dynamic> _$$LocalizedAyahModelImplToJson(
        _$LocalizedAyahModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'surahNumber': instance.surahNumber,
      'ayahNumber': instance.ayahNumber,
      'text': instance.text,
    };
