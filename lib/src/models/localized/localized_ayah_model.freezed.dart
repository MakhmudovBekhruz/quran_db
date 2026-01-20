// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'localized_ayah_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

LocalizedAyahModel _$LocalizedAyahModelFromJson(Map<String, dynamic> json) {
  return _LocalizedAyahModel.fromJson(json);
}

/// @nodoc
mixin _$LocalizedAyahModel {
  /// Unique ayah ID.
  int get id => throw _privateConstructorUsedError;

  /// Surah number.
  int get surahNumber => throw _privateConstructorUsedError;

  /// Ayah number within the surah.
  int get ayahNumber => throw _privateConstructorUsedError;

  /// Localized translation text based on selected language.
  String get text => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LocalizedAyahModelCopyWith<LocalizedAyahModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocalizedAyahModelCopyWith<$Res> {
  factory $LocalizedAyahModelCopyWith(
          LocalizedAyahModel value, $Res Function(LocalizedAyahModel) then) =
      _$LocalizedAyahModelCopyWithImpl<$Res, LocalizedAyahModel>;
  @useResult
  $Res call({int id, int surahNumber, int ayahNumber, String text});
}

/// @nodoc
class _$LocalizedAyahModelCopyWithImpl<$Res, $Val extends LocalizedAyahModel>
    implements $LocalizedAyahModelCopyWith<$Res> {
  _$LocalizedAyahModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? surahNumber = null,
    Object? ayahNumber = null,
    Object? text = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      surahNumber: null == surahNumber
          ? _value.surahNumber
          : surahNumber // ignore: cast_nullable_to_non_nullable
              as int,
      ayahNumber: null == ayahNumber
          ? _value.ayahNumber
          : ayahNumber // ignore: cast_nullable_to_non_nullable
              as int,
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LocalizedAyahModelImplCopyWith<$Res>
    implements $LocalizedAyahModelCopyWith<$Res> {
  factory _$$LocalizedAyahModelImplCopyWith(_$LocalizedAyahModelImpl value,
          $Res Function(_$LocalizedAyahModelImpl) then) =
      __$$LocalizedAyahModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, int surahNumber, int ayahNumber, String text});
}

/// @nodoc
class __$$LocalizedAyahModelImplCopyWithImpl<$Res>
    extends _$LocalizedAyahModelCopyWithImpl<$Res, _$LocalizedAyahModelImpl>
    implements _$$LocalizedAyahModelImplCopyWith<$Res> {
  __$$LocalizedAyahModelImplCopyWithImpl(_$LocalizedAyahModelImpl _value,
      $Res Function(_$LocalizedAyahModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? surahNumber = null,
    Object? ayahNumber = null,
    Object? text = null,
  }) {
    return _then(_$LocalizedAyahModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      surahNumber: null == surahNumber
          ? _value.surahNumber
          : surahNumber // ignore: cast_nullable_to_non_nullable
              as int,
      ayahNumber: null == ayahNumber
          ? _value.ayahNumber
          : ayahNumber // ignore: cast_nullable_to_non_nullable
              as int,
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LocalizedAyahModelImpl implements _LocalizedAyahModel {
  const _$LocalizedAyahModelImpl(
      {required this.id,
      required this.surahNumber,
      required this.ayahNumber,
      required this.text});

  factory _$LocalizedAyahModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$LocalizedAyahModelImplFromJson(json);

  /// Unique ayah ID.
  @override
  final int id;

  /// Surah number.
  @override
  final int surahNumber;

  /// Ayah number within the surah.
  @override
  final int ayahNumber;

  /// Localized translation text based on selected language.
  @override
  final String text;

  @override
  String toString() {
    return 'LocalizedAyahModel(id: $id, surahNumber: $surahNumber, ayahNumber: $ayahNumber, text: $text)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LocalizedAyahModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.surahNumber, surahNumber) ||
                other.surahNumber == surahNumber) &&
            (identical(other.ayahNumber, ayahNumber) ||
                other.ayahNumber == ayahNumber) &&
            (identical(other.text, text) || other.text == text));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, surahNumber, ayahNumber, text);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LocalizedAyahModelImplCopyWith<_$LocalizedAyahModelImpl> get copyWith =>
      __$$LocalizedAyahModelImplCopyWithImpl<_$LocalizedAyahModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LocalizedAyahModelImplToJson(
      this,
    );
  }
}

abstract class _LocalizedAyahModel implements LocalizedAyahModel {
  const factory _LocalizedAyahModel(
      {required final int id,
      required final int surahNumber,
      required final int ayahNumber,
      required final String text}) = _$LocalizedAyahModelImpl;

  factory _LocalizedAyahModel.fromJson(Map<String, dynamic> json) =
      _$LocalizedAyahModelImpl.fromJson;

  @override

  /// Unique ayah ID.
  int get id;
  @override

  /// Surah number.
  int get surahNumber;
  @override

  /// Ayah number within the surah.
  int get ayahNumber;
  @override

  /// Localized translation text based on selected language.
  String get text;
  @override
  @JsonKey(ignore: true)
  _$$LocalizedAyahModelImplCopyWith<_$LocalizedAyahModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
