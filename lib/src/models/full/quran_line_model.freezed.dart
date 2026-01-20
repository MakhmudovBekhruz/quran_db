// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'quran_line_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

QuranLineModel _$QuranLineModelFromJson(Map<String, dynamic> json) {
  return _QuranLineModel.fromJson(json);
}

/// @nodoc
mixin _$QuranLineModel {
  /// Unique line ID.
  int get id => throw _privateConstructorUsedError;

  /// Page number where this line appears.
  int get pageNumber => throw _privateConstructorUsedError;

  /// Type of line (surah-header, basmala, text).
  LineType get type => throw _privateConstructorUsedError;

  /// Verse range covered by this line.
  String get verseRange => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $QuranLineModelCopyWith<QuranLineModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuranLineModelCopyWith<$Res> {
  factory $QuranLineModelCopyWith(
          QuranLineModel value, $Res Function(QuranLineModel) then) =
      _$QuranLineModelCopyWithImpl<$Res, QuranLineModel>;
  @useResult
  $Res call({int id, int pageNumber, LineType type, String verseRange});
}

/// @nodoc
class _$QuranLineModelCopyWithImpl<$Res, $Val extends QuranLineModel>
    implements $QuranLineModelCopyWith<$Res> {
  _$QuranLineModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? pageNumber = null,
    Object? type = null,
    Object? verseRange = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      pageNumber: null == pageNumber
          ? _value.pageNumber
          : pageNumber // ignore: cast_nullable_to_non_nullable
              as int,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as LineType,
      verseRange: null == verseRange
          ? _value.verseRange
          : verseRange // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$QuranLineModelImplCopyWith<$Res>
    implements $QuranLineModelCopyWith<$Res> {
  factory _$$QuranLineModelImplCopyWith(_$QuranLineModelImpl value,
          $Res Function(_$QuranLineModelImpl) then) =
      __$$QuranLineModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, int pageNumber, LineType type, String verseRange});
}

/// @nodoc
class __$$QuranLineModelImplCopyWithImpl<$Res>
    extends _$QuranLineModelCopyWithImpl<$Res, _$QuranLineModelImpl>
    implements _$$QuranLineModelImplCopyWith<$Res> {
  __$$QuranLineModelImplCopyWithImpl(
      _$QuranLineModelImpl _value, $Res Function(_$QuranLineModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? pageNumber = null,
    Object? type = null,
    Object? verseRange = null,
  }) {
    return _then(_$QuranLineModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      pageNumber: null == pageNumber
          ? _value.pageNumber
          : pageNumber // ignore: cast_nullable_to_non_nullable
              as int,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as LineType,
      verseRange: null == verseRange
          ? _value.verseRange
          : verseRange // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$QuranLineModelImpl implements _QuranLineModel {
  const _$QuranLineModelImpl(
      {required this.id,
      required this.pageNumber,
      required this.type,
      required this.verseRange});

  factory _$QuranLineModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$QuranLineModelImplFromJson(json);

  /// Unique line ID.
  @override
  final int id;

  /// Page number where this line appears.
  @override
  final int pageNumber;

  /// Type of line (surah-header, basmala, text).
  @override
  final LineType type;

  /// Verse range covered by this line.
  @override
  final String verseRange;

  @override
  String toString() {
    return 'QuranLineModel(id: $id, pageNumber: $pageNumber, type: $type, verseRange: $verseRange)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QuranLineModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.pageNumber, pageNumber) ||
                other.pageNumber == pageNumber) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.verseRange, verseRange) ||
                other.verseRange == verseRange));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, pageNumber, type, verseRange);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$QuranLineModelImplCopyWith<_$QuranLineModelImpl> get copyWith =>
      __$$QuranLineModelImplCopyWithImpl<_$QuranLineModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$QuranLineModelImplToJson(
      this,
    );
  }
}

abstract class _QuranLineModel implements QuranLineModel {
  const factory _QuranLineModel(
      {required final int id,
      required final int pageNumber,
      required final LineType type,
      required final String verseRange}) = _$QuranLineModelImpl;

  factory _QuranLineModel.fromJson(Map<String, dynamic> json) =
      _$QuranLineModelImpl.fromJson;

  @override

  /// Unique line ID.
  int get id;
  @override

  /// Page number where this line appears.
  int get pageNumber;
  @override

  /// Type of line (surah-header, basmala, text).
  LineType get type;
  @override

  /// Verse range covered by this line.
  String get verseRange;
  @override
  @JsonKey(ignore: true)
  _$$QuranLineModelImplCopyWith<_$QuranLineModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
