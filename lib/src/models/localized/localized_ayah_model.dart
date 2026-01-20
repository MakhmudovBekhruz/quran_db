import 'package:freezed_annotation/freezed_annotation.dart';

part 'localized_ayah_model.freezed.dart';
part 'localized_ayah_model.g.dart';

/// Localized Ayah model with single language translation.
@freezed
class LocalizedAyahModel with _$LocalizedAyahModel {
  const factory LocalizedAyahModel({
    /// Unique ayah ID.
    required int id,

    /// Surah number.
    required int surahNumber,

    /// Ayah number within the surah.
    required int ayahNumber,

    /// Localized translation text based on selected language.
    required String text,
  }) = _LocalizedAyahModel;

  factory LocalizedAyahModel.fromJson(Map<String, dynamic> json) =>
      _$LocalizedAyahModelFromJson(json);
}
