import 'package:freezed_annotation/freezed_annotation.dart';
import '../common/line_type.dart';

part 'quran_line_model.freezed.dart';
part 'quran_line_model.g.dart';

/// Full QuranLine model representing a line on a Quran page.
@freezed
class QuranLineModel with _$QuranLineModel {
  const factory QuranLineModel({
    /// Unique line ID.
    required int id,

    /// Page number where this line appears.
    required int pageNumber,

    /// Type of line (surah-header, basmala, text).
    required LineType type,

    /// Verse range covered by this line.
    required String verseRange,
  }) = _QuranLineModel;

  factory QuranLineModel.fromJson(Map<String, dynamic> json) =>
      _$QuranLineModelFromJson(json);
}
