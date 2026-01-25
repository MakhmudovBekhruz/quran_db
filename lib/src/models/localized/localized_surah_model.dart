import 'package:freezed_annotation/freezed_annotation.dart';

import '../common/revelation_type.dart';

part 'localized_surah_model.freezed.dart';
part 'localized_surah_model.g.dart';

/// Localized Surah model with single language translation.
@freezed
class LocalizedSurahModel with _$LocalizedSurahModel {
  const factory LocalizedSurahModel({
    /// Surah number (1-114).
    required int number,

    /// Arabic name.
    required String nameArabic,

    /// Localized name based on selected language.
    required String name,

    /// Localized meaning of the name.
    required String meaning,

    /// Total number of verses in this surah.
    required int versesCount,

    /// Page number where this surah starts.
    required int pageStart,

    /// Revelation type (Meccan or Medinan).
    required RevelationType revelationType,

    /// Localized revelation city name (Mecca/Medina in selected language).
    required String revelationCity,
  }) = _LocalizedSurahModel;

  factory LocalizedSurahModel.fromJson(Map<String, dynamic> json) =>
      _$LocalizedSurahModelFromJson(json);
}
