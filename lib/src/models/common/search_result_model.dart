import 'package:freezed_annotation/freezed_annotation.dart';

part 'search_result_model.freezed.dart';
part 'search_result_model.g.dart';

/// The type of search result.
enum SearchResultType {
  /// Result is an ayah
  ayah,

  /// Result is a surah name
  surah,
}

/// A search result model with match context and highlighting info.
@freezed
class SearchResultModel with _$SearchResultModel {
  const factory SearchResultModel({
    /// The type of this search result.
    required SearchResultType type,

    /// The surah number.
    required int surahNumber,

    /// The ayah number (null if result is a surah name match).
    int? ayahNumber,

    /// The matched text content.
    required String matchedText,

    /// The full text where the match was found.
    required String fullText,

    /// The start index of the match in the full text.
    required int matchStartIndex,

    /// The end index of the match in the full text.
    required int matchEndIndex,

    /// Context text before the match.
    required String contextBefore,

    /// Context text after the match.
    required String contextAfter,
  }) = _SearchResultModel;

  factory SearchResultModel.fromJson(Map<String, dynamic> json) =>
      _$SearchResultModelFromJson(json);
}
