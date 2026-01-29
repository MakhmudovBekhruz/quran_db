import 'package:freezed_annotation/freezed_annotation.dart';

part 'quran_line_word_model.freezed.dart';
part 'quran_line_word_model.g.dart';

/// Full QuranLineWord model representing a word in a Quran line.
@freezed
class QuranLineWordModel with _$QuranLineWordModel {
  const factory QuranLineWordModel({
    /// Unique word ID.
    required int id,

    /// Location identifier.
    /// Format: "surah:ayah:wordNumberInAyah" (e.g., "1:1:1", "2:3:5")
    required String location,

    /// The word text.
    required String word,

    /// QOC version 1 text.
    required String qocV1,

    /// QOC version 2 text.
    required String qocV2,

    /// ID of the line this word belongs to.
    required int lineId,
  }) = _QuranLineWordModel;

  const QuranLineWordModel._();

  factory QuranLineWordModel.fromJson(Map<String, dynamic> json) =>
      _$QuranLineWordModelFromJson(json);

  /// Surah number (1-114) parsed from the location field.
  ///
  /// Returns `null` if location is empty or cannot be parsed.
  /// Location format: "surah:ayah:wordNumberInAyah"
  int? get surahNumber => _parseSurahFromLocation(location);

  /// Ayah number within the surah parsed from the location field.
  ///
  /// Returns `null` if location is empty or cannot be parsed.
  /// Location format: "surah:ayah:wordNumberInAyah"
  int? get ayahNumber => _parseAyahFromLocation(location);

  /// Word index within the ayah parsed from the location field (1-based).
  ///
  /// Returns `null` if location is empty or cannot be parsed.
  /// Location format: "surah:ayah:wordNumberInAyah"
  int? get wordNumberInAyah => _parseWordNumberFromLocation(location);

  /// Parses the surah number from the location string.
  ///
  /// Location format: "surah:ayah:wordNumberInAyah"
  /// Returns `null` if location is empty or cannot be parsed.
  int? _parseSurahFromLocation(String location) {
    if (location.isEmpty) return null;
    final parts = location.split(':');
    if (parts.length < 2) return null;
    return int.tryParse(parts[0]);
  }

  /// Parses the ayah number from the location string.
  ///
  /// Location format: "surah:ayah:wordNumberInAyah"
  /// Returns `null` if location is empty or cannot be parsed.
  int? _parseAyahFromLocation(String location) {
    if (location.isEmpty) return null;
    final parts = location.split(':');
    if (parts.length < 2) return null;
    return int.tryParse(parts[1]);
  }

  /// Parses the word index within the ayah from the location string (1-based).
  ///
  /// Location format: "surah:ayah:wordNumberInAyah"
  /// Returns `null` if location is empty or cannot be parsed.
  int? _parseWordNumberFromLocation(String location) {
    if (location.isEmpty) return null;
    final parts = location.split(':');
    if (parts.length < 3) return null;
    return int.tryParse(parts[2]);
  }
}
