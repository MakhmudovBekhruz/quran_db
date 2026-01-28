import 'package:freezed_annotation/freezed_annotation.dart';
import '../full/quran_line_model.dart';
import '../full/quran_line_word_model.dart';
import '../localized/localized_ayah_model.dart';
import '../localized/localized_juz_model.dart';
import '../localized/localized_surah_model.dart';

part 'quran_page_model.freezed.dart';
part 'quran_page_model.g.dart';

/// A complete Quran page with its lines, words and related metadata.
@freezed
class QuranPageModel with _$QuranPageModel {
  const factory QuranPageModel({
    /// The page number.
    required int pageNumber,

    /// List of lines on this page with their words.
    required List<QuranPageLineModel> lines,

    /// List of surahs that have at least one ayah on this page.
    ///
    /// Localized to the requested [QuranLanguage] when fetched from the repository.
    required List<LocalizedSurahModel> surahs,

    /// List of juz that intersect with this page.
    ///
    /// Localized to the requested [QuranLanguage] when fetched from the repository.
    required List<LocalizedJuzModel> juzList,

    /// List of ayahs that appear (even partially) on this page.
    ///
    /// Localized to the requested [QuranLanguage] when fetched from the repository.
    required List<LocalizedAyahModel> ayahs,
  }) = _QuranPageModel;

  factory QuranPageModel.fromJson(Map<String, dynamic> json) =>
      _$QuranPageModelFromJson(json);
}

/// A line on a Quran page with its associated words.
@freezed
class QuranPageLineModel with _$QuranPageLineModel {
  const factory QuranPageLineModel({
    /// The line data.
    required QuranLineModel line,

    /// List of words in this line.
    required List<QuranLineWordModel> words,
  }) = _QuranPageLineModel;

  factory QuranPageLineModel.fromJson(Map<String, dynamic> json) =>
      _$QuranPageLineModelFromJson(json);
}
