import 'package:freezed_annotation/freezed_annotation.dart';

import '../common/revelation_type.dart';

part 'surah_model.freezed.dart';
part 'surah_model.g.dart';

/// Full Surah model with all language translations.
@freezed
class SurahModel with _$SurahModel {
  const factory SurahModel({
    /// Surah number (1-114).
    required int number,

    /// Arabic name.
    required String nameAr,

    /// English name.
    required String nameEn,

    /// Russian name.
    required String nameRu,

    /// Uzbek name in Latin script.
    required String nameUzLat,

    /// Uzbek name in Cyrillic script.
    required String nameUzCyr,

    /// English meaning of the name.
    required String nameEnMeaning,

    /// Russian meaning of the name.
    required String nameRuMeaning,

    /// Uzbek meaning of the name in Latin script.
    required String nameUzLatMeaning,

    /// Uzbek meaning of the name in Cyrillic script.
    required String nameUzCyrMeaning,

    /// Kazakh name.
    required String nameKk,

    /// Kazakh meaning of the name.
    required String nameKkMeaning,

    /// Tajik name.
    required String nameTg,

    /// Tajik meaning of the name.
    required String nameTgMeaning,

    /// Turkish name.
    required String nameTr,

    /// Turkish meaning of the name.
    required String nameTrMeaning,

    /// Urdu name.
    required String nameUr,

    /// Urdu meaning of the name.
    required String nameUrMeaning,

    /// Total number of verses in this surah.
    required int versesCount,

    /// Page number where this surah starts.
    required int pageStart,

    /// Revelation type (Meccan or Medinan).
    required RevelationType revelationType,
  }) = _SurahModel;

  factory SurahModel.fromJson(Map<String, dynamic> json) =>
      _$SurahModelFromJson(json);
}
