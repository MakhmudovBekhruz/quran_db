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

  factory QuranLineWordModel.fromJson(Map<String, dynamic> json) =>
      _$QuranLineWordModelFromJson(json);
}
