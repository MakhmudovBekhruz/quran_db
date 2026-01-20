import 'package:freezed_annotation/freezed_annotation.dart';

part 'ayah_model.freezed.dart';
part 'ayah_model.g.dart';

/// Full Ayah model with all language translations.
@freezed
class AyahModel with _$AyahModel {
  const factory AyahModel({
    /// Unique ayah ID.
    required int id,

    /// Surah ID (number).
    required int surahId,

    /// Ayah number within the surah.
    required int ayahNumber,

    /// English translation.
    required String textEn,

    /// Russian translation.
    required String textRu,

    /// Uzbek translation in Latin script.
    required String textUzLat,

    /// Uzbek translation in Cyrillic script.
    required String textUzCyr,
  }) = _AyahModel;

  factory AyahModel.fromJson(Map<String, dynamic> json) =>
      _$AyahModelFromJson(json);
}
