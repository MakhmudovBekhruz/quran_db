// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ayah_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AyahModel _$AyahModelFromJson(Map<String, dynamic> json) {
  return _AyahModel.fromJson(json);
}

/// @nodoc
mixin _$AyahModel {
  /// Unique ayah ID.
  int get id => throw _privateConstructorUsedError;

  /// Surah ID (number).
  int get surahId => throw _privateConstructorUsedError;

  /// Ayah number within the surah.
  int get ayahNumber => throw _privateConstructorUsedError;

  /// English translation.
  String get textEn => throw _privateConstructorUsedError;

  /// Russian translation.
  String get textRu => throw _privateConstructorUsedError;

  /// Uzbek translation in Latin script.
  String get textUzLat => throw _privateConstructorUsedError;

  /// Uzbek translation in Cyrillic script.
  String get textUzCyr => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AyahModelCopyWith<AyahModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AyahModelCopyWith<$Res> {
  factory $AyahModelCopyWith(AyahModel value, $Res Function(AyahModel) then) =
      _$AyahModelCopyWithImpl<$Res, AyahModel>;
  @useResult
  $Res call(
      {int id,
      int surahId,
      int ayahNumber,
      String textEn,
      String textRu,
      String textUzLat,
      String textUzCyr});
}

/// @nodoc
class _$AyahModelCopyWithImpl<$Res, $Val extends AyahModel>
    implements $AyahModelCopyWith<$Res> {
  _$AyahModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? surahId = null,
    Object? ayahNumber = null,
    Object? textEn = null,
    Object? textRu = null,
    Object? textUzLat = null,
    Object? textUzCyr = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      surahId: null == surahId
          ? _value.surahId
          : surahId // ignore: cast_nullable_to_non_nullable
              as int,
      ayahNumber: null == ayahNumber
          ? _value.ayahNumber
          : ayahNumber // ignore: cast_nullable_to_non_nullable
              as int,
      textEn: null == textEn
          ? _value.textEn
          : textEn // ignore: cast_nullable_to_non_nullable
              as String,
      textRu: null == textRu
          ? _value.textRu
          : textRu // ignore: cast_nullable_to_non_nullable
              as String,
      textUzLat: null == textUzLat
          ? _value.textUzLat
          : textUzLat // ignore: cast_nullable_to_non_nullable
              as String,
      textUzCyr: null == textUzCyr
          ? _value.textUzCyr
          : textUzCyr // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AyahModelImplCopyWith<$Res>
    implements $AyahModelCopyWith<$Res> {
  factory _$$AyahModelImplCopyWith(
          _$AyahModelImpl value, $Res Function(_$AyahModelImpl) then) =
      __$$AyahModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      int surahId,
      int ayahNumber,
      String textEn,
      String textRu,
      String textUzLat,
      String textUzCyr});
}

/// @nodoc
class __$$AyahModelImplCopyWithImpl<$Res>
    extends _$AyahModelCopyWithImpl<$Res, _$AyahModelImpl>
    implements _$$AyahModelImplCopyWith<$Res> {
  __$$AyahModelImplCopyWithImpl(
      _$AyahModelImpl _value, $Res Function(_$AyahModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? surahId = null,
    Object? ayahNumber = null,
    Object? textEn = null,
    Object? textRu = null,
    Object? textUzLat = null,
    Object? textUzCyr = null,
  }) {
    return _then(_$AyahModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      surahId: null == surahId
          ? _value.surahId
          : surahId // ignore: cast_nullable_to_non_nullable
              as int,
      ayahNumber: null == ayahNumber
          ? _value.ayahNumber
          : ayahNumber // ignore: cast_nullable_to_non_nullable
              as int,
      textEn: null == textEn
          ? _value.textEn
          : textEn // ignore: cast_nullable_to_non_nullable
              as String,
      textRu: null == textRu
          ? _value.textRu
          : textRu // ignore: cast_nullable_to_non_nullable
              as String,
      textUzLat: null == textUzLat
          ? _value.textUzLat
          : textUzLat // ignore: cast_nullable_to_non_nullable
              as String,
      textUzCyr: null == textUzCyr
          ? _value.textUzCyr
          : textUzCyr // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AyahModelImpl implements _AyahModel {
  const _$AyahModelImpl(
      {required this.id,
      required this.surahId,
      required this.ayahNumber,
      required this.textEn,
      required this.textRu,
      required this.textUzLat,
      required this.textUzCyr});

  factory _$AyahModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$AyahModelImplFromJson(json);

  /// Unique ayah ID.
  @override
  final int id;

  /// Surah ID (number).
  @override
  final int surahId;

  /// Ayah number within the surah.
  @override
  final int ayahNumber;

  /// English translation.
  @override
  final String textEn;

  /// Russian translation.
  @override
  final String textRu;

  /// Uzbek translation in Latin script.
  @override
  final String textUzLat;

  /// Uzbek translation in Cyrillic script.
  @override
  final String textUzCyr;

  @override
  String toString() {
    return 'AyahModel(id: $id, surahId: $surahId, ayahNumber: $ayahNumber, textEn: $textEn, textRu: $textRu, textUzLat: $textUzLat, textUzCyr: $textUzCyr)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AyahModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.surahId, surahId) || other.surahId == surahId) &&
            (identical(other.ayahNumber, ayahNumber) ||
                other.ayahNumber == ayahNumber) &&
            (identical(other.textEn, textEn) || other.textEn == textEn) &&
            (identical(other.textRu, textRu) || other.textRu == textRu) &&
            (identical(other.textUzLat, textUzLat) ||
                other.textUzLat == textUzLat) &&
            (identical(other.textUzCyr, textUzCyr) ||
                other.textUzCyr == textUzCyr));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, surahId, ayahNumber, textEn,
      textRu, textUzLat, textUzCyr);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AyahModelImplCopyWith<_$AyahModelImpl> get copyWith =>
      __$$AyahModelImplCopyWithImpl<_$AyahModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AyahModelImplToJson(
      this,
    );
  }
}

abstract class _AyahModel implements AyahModel {
  const factory _AyahModel(
      {required final int id,
      required final int surahId,
      required final int ayahNumber,
      required final String textEn,
      required final String textRu,
      required final String textUzLat,
      required final String textUzCyr}) = _$AyahModelImpl;

  factory _AyahModel.fromJson(Map<String, dynamic> json) =
      _$AyahModelImpl.fromJson;

  @override

  /// Unique ayah ID.
  int get id;
  @override

  /// Surah ID (number).
  int get surahId;
  @override

  /// Ayah number within the surah.
  int get ayahNumber;
  @override

  /// English translation.
  String get textEn;
  @override

  /// Russian translation.
  String get textRu;
  @override

  /// Uzbek translation in Latin script.
  String get textUzLat;
  @override

  /// Uzbek translation in Cyrillic script.
  String get textUzCyr;
  @override
  @JsonKey(ignore: true)
  _$$AyahModelImplCopyWith<_$AyahModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
