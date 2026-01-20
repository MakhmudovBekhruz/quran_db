// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'quran_line_word_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

QuranLineWordModel _$QuranLineWordModelFromJson(Map<String, dynamic> json) {
  return _QuranLineWordModel.fromJson(json);
}

/// @nodoc
mixin _$QuranLineWordModel {
  /// Unique word ID.
  int get id => throw _privateConstructorUsedError;

  /// Location identifier.
  String get location => throw _privateConstructorUsedError;

  /// The word text.
  String get word => throw _privateConstructorUsedError;

  /// QOC version 1 text.
  String get qocV1 => throw _privateConstructorUsedError;

  /// QOC version 2 text.
  String get qocV2 => throw _privateConstructorUsedError;

  /// ID of the line this word belongs to.
  int get lineId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $QuranLineWordModelCopyWith<QuranLineWordModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuranLineWordModelCopyWith<$Res> {
  factory $QuranLineWordModelCopyWith(
          QuranLineWordModel value, $Res Function(QuranLineWordModel) then) =
      _$QuranLineWordModelCopyWithImpl<$Res, QuranLineWordModel>;
  @useResult
  $Res call(
      {int id,
      String location,
      String word,
      String qocV1,
      String qocV2,
      int lineId});
}

/// @nodoc
class _$QuranLineWordModelCopyWithImpl<$Res, $Val extends QuranLineWordModel>
    implements $QuranLineWordModelCopyWith<$Res> {
  _$QuranLineWordModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? location = null,
    Object? word = null,
    Object? qocV1 = null,
    Object? qocV2 = null,
    Object? lineId = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String,
      word: null == word
          ? _value.word
          : word // ignore: cast_nullable_to_non_nullable
              as String,
      qocV1: null == qocV1
          ? _value.qocV1
          : qocV1 // ignore: cast_nullable_to_non_nullable
              as String,
      qocV2: null == qocV2
          ? _value.qocV2
          : qocV2 // ignore: cast_nullable_to_non_nullable
              as String,
      lineId: null == lineId
          ? _value.lineId
          : lineId // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$QuranLineWordModelImplCopyWith<$Res>
    implements $QuranLineWordModelCopyWith<$Res> {
  factory _$$QuranLineWordModelImplCopyWith(_$QuranLineWordModelImpl value,
          $Res Function(_$QuranLineWordModelImpl) then) =
      __$$QuranLineWordModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String location,
      String word,
      String qocV1,
      String qocV2,
      int lineId});
}

/// @nodoc
class __$$QuranLineWordModelImplCopyWithImpl<$Res>
    extends _$QuranLineWordModelCopyWithImpl<$Res, _$QuranLineWordModelImpl>
    implements _$$QuranLineWordModelImplCopyWith<$Res> {
  __$$QuranLineWordModelImplCopyWithImpl(_$QuranLineWordModelImpl _value,
      $Res Function(_$QuranLineWordModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? location = null,
    Object? word = null,
    Object? qocV1 = null,
    Object? qocV2 = null,
    Object? lineId = null,
  }) {
    return _then(_$QuranLineWordModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String,
      word: null == word
          ? _value.word
          : word // ignore: cast_nullable_to_non_nullable
              as String,
      qocV1: null == qocV1
          ? _value.qocV1
          : qocV1 // ignore: cast_nullable_to_non_nullable
              as String,
      qocV2: null == qocV2
          ? _value.qocV2
          : qocV2 // ignore: cast_nullable_to_non_nullable
              as String,
      lineId: null == lineId
          ? _value.lineId
          : lineId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$QuranLineWordModelImpl implements _QuranLineWordModel {
  const _$QuranLineWordModelImpl(
      {required this.id,
      required this.location,
      required this.word,
      required this.qocV1,
      required this.qocV2,
      required this.lineId});

  factory _$QuranLineWordModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$QuranLineWordModelImplFromJson(json);

  /// Unique word ID.
  @override
  final int id;

  /// Location identifier.
  @override
  final String location;

  /// The word text.
  @override
  final String word;

  /// QOC version 1 text.
  @override
  final String qocV1;

  /// QOC version 2 text.
  @override
  final String qocV2;

  /// ID of the line this word belongs to.
  @override
  final int lineId;

  @override
  String toString() {
    return 'QuranLineWordModel(id: $id, location: $location, word: $word, qocV1: $qocV1, qocV2: $qocV2, lineId: $lineId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QuranLineWordModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.word, word) || other.word == word) &&
            (identical(other.qocV1, qocV1) || other.qocV1 == qocV1) &&
            (identical(other.qocV2, qocV2) || other.qocV2 == qocV2) &&
            (identical(other.lineId, lineId) || other.lineId == lineId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, location, word, qocV1, qocV2, lineId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$QuranLineWordModelImplCopyWith<_$QuranLineWordModelImpl> get copyWith =>
      __$$QuranLineWordModelImplCopyWithImpl<_$QuranLineWordModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$QuranLineWordModelImplToJson(
      this,
    );
  }
}

abstract class _QuranLineWordModel implements QuranLineWordModel {
  const factory _QuranLineWordModel(
      {required final int id,
      required final String location,
      required final String word,
      required final String qocV1,
      required final String qocV2,
      required final int lineId}) = _$QuranLineWordModelImpl;

  factory _QuranLineWordModel.fromJson(Map<String, dynamic> json) =
      _$QuranLineWordModelImpl.fromJson;

  @override

  /// Unique word ID.
  int get id;
  @override

  /// Location identifier.
  String get location;
  @override

  /// The word text.
  String get word;
  @override

  /// QOC version 1 text.
  String get qocV1;
  @override

  /// QOC version 2 text.
  String get qocV2;
  @override

  /// ID of the line this word belongs to.
  int get lineId;
  @override
  @JsonKey(ignore: true)
  _$$QuranLineWordModelImplCopyWith<_$QuranLineWordModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
