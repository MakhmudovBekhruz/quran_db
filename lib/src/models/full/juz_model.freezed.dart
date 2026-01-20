// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'juz_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

JuzModel _$JuzModelFromJson(Map<String, dynamic> json) {
  return _JuzModel.fromJson(json);
}

/// @nodoc
mixin _$JuzModel {
  /// Juz number (1-30).
  int get number => throw _privateConstructorUsedError;

  /// Arabic name.
  String get nameAr => throw _privateConstructorUsedError;

  /// English name.
  String get nameEn => throw _privateConstructorUsedError;

  /// Starting surah number.
  int get startSurahNumber => throw _privateConstructorUsedError;

  /// Starting ayah number.
  int get startAyahNumber => throw _privateConstructorUsedError;

  /// Ending surah number.
  int get endSurahNumber => throw _privateConstructorUsedError;

  /// Ending ayah number.
  int get endAyahNumber => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $JuzModelCopyWith<JuzModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $JuzModelCopyWith<$Res> {
  factory $JuzModelCopyWith(JuzModel value, $Res Function(JuzModel) then) =
      _$JuzModelCopyWithImpl<$Res, JuzModel>;
  @useResult
  $Res call(
      {int number,
      String nameAr,
      String nameEn,
      int startSurahNumber,
      int startAyahNumber,
      int endSurahNumber,
      int endAyahNumber});
}

/// @nodoc
class _$JuzModelCopyWithImpl<$Res, $Val extends JuzModel>
    implements $JuzModelCopyWith<$Res> {
  _$JuzModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? number = null,
    Object? nameAr = null,
    Object? nameEn = null,
    Object? startSurahNumber = null,
    Object? startAyahNumber = null,
    Object? endSurahNumber = null,
    Object? endAyahNumber = null,
  }) {
    return _then(_value.copyWith(
      number: null == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as int,
      nameAr: null == nameAr
          ? _value.nameAr
          : nameAr // ignore: cast_nullable_to_non_nullable
              as String,
      nameEn: null == nameEn
          ? _value.nameEn
          : nameEn // ignore: cast_nullable_to_non_nullable
              as String,
      startSurahNumber: null == startSurahNumber
          ? _value.startSurahNumber
          : startSurahNumber // ignore: cast_nullable_to_non_nullable
              as int,
      startAyahNumber: null == startAyahNumber
          ? _value.startAyahNumber
          : startAyahNumber // ignore: cast_nullable_to_non_nullable
              as int,
      endSurahNumber: null == endSurahNumber
          ? _value.endSurahNumber
          : endSurahNumber // ignore: cast_nullable_to_non_nullable
              as int,
      endAyahNumber: null == endAyahNumber
          ? _value.endAyahNumber
          : endAyahNumber // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$JuzModelImplCopyWith<$Res>
    implements $JuzModelCopyWith<$Res> {
  factory _$$JuzModelImplCopyWith(
          _$JuzModelImpl value, $Res Function(_$JuzModelImpl) then) =
      __$$JuzModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int number,
      String nameAr,
      String nameEn,
      int startSurahNumber,
      int startAyahNumber,
      int endSurahNumber,
      int endAyahNumber});
}

/// @nodoc
class __$$JuzModelImplCopyWithImpl<$Res>
    extends _$JuzModelCopyWithImpl<$Res, _$JuzModelImpl>
    implements _$$JuzModelImplCopyWith<$Res> {
  __$$JuzModelImplCopyWithImpl(
      _$JuzModelImpl _value, $Res Function(_$JuzModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? number = null,
    Object? nameAr = null,
    Object? nameEn = null,
    Object? startSurahNumber = null,
    Object? startAyahNumber = null,
    Object? endSurahNumber = null,
    Object? endAyahNumber = null,
  }) {
    return _then(_$JuzModelImpl(
      number: null == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as int,
      nameAr: null == nameAr
          ? _value.nameAr
          : nameAr // ignore: cast_nullable_to_non_nullable
              as String,
      nameEn: null == nameEn
          ? _value.nameEn
          : nameEn // ignore: cast_nullable_to_non_nullable
              as String,
      startSurahNumber: null == startSurahNumber
          ? _value.startSurahNumber
          : startSurahNumber // ignore: cast_nullable_to_non_nullable
              as int,
      startAyahNumber: null == startAyahNumber
          ? _value.startAyahNumber
          : startAyahNumber // ignore: cast_nullable_to_non_nullable
              as int,
      endSurahNumber: null == endSurahNumber
          ? _value.endSurahNumber
          : endSurahNumber // ignore: cast_nullable_to_non_nullable
              as int,
      endAyahNumber: null == endAyahNumber
          ? _value.endAyahNumber
          : endAyahNumber // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$JuzModelImpl implements _JuzModel {
  const _$JuzModelImpl(
      {required this.number,
      required this.nameAr,
      required this.nameEn,
      required this.startSurahNumber,
      required this.startAyahNumber,
      required this.endSurahNumber,
      required this.endAyahNumber});

  factory _$JuzModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$JuzModelImplFromJson(json);

  /// Juz number (1-30).
  @override
  final int number;

  /// Arabic name.
  @override
  final String nameAr;

  /// English name.
  @override
  final String nameEn;

  /// Starting surah number.
  @override
  final int startSurahNumber;

  /// Starting ayah number.
  @override
  final int startAyahNumber;

  /// Ending surah number.
  @override
  final int endSurahNumber;

  /// Ending ayah number.
  @override
  final int endAyahNumber;

  @override
  String toString() {
    return 'JuzModel(number: $number, nameAr: $nameAr, nameEn: $nameEn, startSurahNumber: $startSurahNumber, startAyahNumber: $startAyahNumber, endSurahNumber: $endSurahNumber, endAyahNumber: $endAyahNumber)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$JuzModelImpl &&
            (identical(other.number, number) || other.number == number) &&
            (identical(other.nameAr, nameAr) || other.nameAr == nameAr) &&
            (identical(other.nameEn, nameEn) || other.nameEn == nameEn) &&
            (identical(other.startSurahNumber, startSurahNumber) ||
                other.startSurahNumber == startSurahNumber) &&
            (identical(other.startAyahNumber, startAyahNumber) ||
                other.startAyahNumber == startAyahNumber) &&
            (identical(other.endSurahNumber, endSurahNumber) ||
                other.endSurahNumber == endSurahNumber) &&
            (identical(other.endAyahNumber, endAyahNumber) ||
                other.endAyahNumber == endAyahNumber));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, number, nameAr, nameEn,
      startSurahNumber, startAyahNumber, endSurahNumber, endAyahNumber);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$JuzModelImplCopyWith<_$JuzModelImpl> get copyWith =>
      __$$JuzModelImplCopyWithImpl<_$JuzModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$JuzModelImplToJson(
      this,
    );
  }
}

abstract class _JuzModel implements JuzModel {
  const factory _JuzModel(
      {required final int number,
      required final String nameAr,
      required final String nameEn,
      required final int startSurahNumber,
      required final int startAyahNumber,
      required final int endSurahNumber,
      required final int endAyahNumber}) = _$JuzModelImpl;

  factory _JuzModel.fromJson(Map<String, dynamic> json) =
      _$JuzModelImpl.fromJson;

  @override

  /// Juz number (1-30).
  int get number;
  @override

  /// Arabic name.
  String get nameAr;
  @override

  /// English name.
  String get nameEn;
  @override

  /// Starting surah number.
  int get startSurahNumber;
  @override

  /// Starting ayah number.
  int get startAyahNumber;
  @override

  /// Ending surah number.
  int get endSurahNumber;
  @override

  /// Ending ayah number.
  int get endAyahNumber;
  @override
  @JsonKey(ignore: true)
  _$$JuzModelImplCopyWith<_$JuzModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
