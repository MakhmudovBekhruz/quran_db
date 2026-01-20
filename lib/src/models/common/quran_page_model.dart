import 'package:freezed_annotation/freezed_annotation.dart';
import '../full/quran_line_model.dart';
import '../full/quran_line_word_model.dart';

part 'quran_page_model.freezed.dart';
part 'quran_page_model.g.dart';

/// A complete Quran page with lines and their words.
@freezed
class QuranPageModel with _$QuranPageModel {
  const factory QuranPageModel({
    /// The page number.
    required int pageNumber,

    /// List of lines on this page with their words.
    required List<QuranPageLineModel> lines,
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
