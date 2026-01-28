import 'package:freezed_annotation/freezed_annotation.dart';

part 'localized_juz_model.freezed.dart';
part 'localized_juz_model.g.dart';

/// Localized Juz model.
@freezed
class LocalizedJuzModel with _$LocalizedJuzModel {
  const factory LocalizedJuzModel({
    /// Juz number (1-30).
    required int number,

    /// Arabic name.
    required String nameArabic,

    /// English name (standard transliteration).
    required String name,

    /// Starting surah number.
    required int startSurahNumber,

    /// Starting ayah number.
    required int startAyahNumber,

    /// Ending surah number.
    required int endSurahNumber,

    /// Ending ayah number.
    required int endAyahNumber,

    /// Page number where this juz starts.
    required int pageStart,
  }) = _LocalizedJuzModel;

  factory LocalizedJuzModel.fromJson(Map<String, dynamic> json) =>
      _$LocalizedJuzModelFromJson(json);
}
