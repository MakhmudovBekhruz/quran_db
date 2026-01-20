import 'package:freezed_annotation/freezed_annotation.dart';

part 'juz_model.freezed.dart';
part 'juz_model.g.dart';

/// Full Juz model.
@freezed
class JuzModel with _$JuzModel {
  const factory JuzModel({
    /// Juz number (1-30).
    required int number,

    /// Arabic name.
    required String nameAr,

    /// English name.
    required String nameEn,

    /// Starting surah number.
    required int startSurahNumber,

    /// Starting ayah number.
    required int startAyahNumber,

    /// Ending surah number.
    required int endSurahNumber,

    /// Ending ayah number.
    required int endAyahNumber,
  }) = _JuzModel;

  factory JuzModel.fromJson(Map<String, dynamic> json) =>
      _$JuzModelFromJson(json);
}
