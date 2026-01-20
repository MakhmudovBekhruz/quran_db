// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'quran_page_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$QuranPageModelImpl _$$QuranPageModelImplFromJson(Map<String, dynamic> json) =>
    _$QuranPageModelImpl(
      pageNumber: (json['pageNumber'] as num).toInt(),
      lines: (json['lines'] as List<dynamic>)
          .map((e) => QuranPageLineModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$QuranPageModelImplToJson(
        _$QuranPageModelImpl instance) =>
    <String, dynamic>{
      'pageNumber': instance.pageNumber,
      'lines': instance.lines,
    };

_$QuranPageLineModelImpl _$$QuranPageLineModelImplFromJson(
        Map<String, dynamic> json) =>
    _$QuranPageLineModelImpl(
      line: QuranLineModel.fromJson(json['line'] as Map<String, dynamic>),
      words: (json['words'] as List<dynamic>)
          .map((e) => QuranLineWordModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$QuranPageLineModelImplToJson(
        _$QuranPageLineModelImpl instance) =>
    <String, dynamic>{
      'line': instance.line,
      'words': instance.words,
    };
