// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_result_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SearchResultModel _$SearchResultModelFromJson(Map<String, dynamic> json) {
  return _SearchResultModel.fromJson(json);
}

/// @nodoc
mixin _$SearchResultModel {
  /// The type of this search result.
  SearchResultType get type => throw _privateConstructorUsedError;

  /// The surah number.
  int get surahNumber => throw _privateConstructorUsedError;

  /// The ayah number (null if result is a surah name match).
  int? get ayahNumber => throw _privateConstructorUsedError;

  /// The matched text content.
  String get matchedText => throw _privateConstructorUsedError;

  /// The full text where the match was found.
  String get fullText => throw _privateConstructorUsedError;

  /// The start index of the match in the full text.
  int get matchStartIndex => throw _privateConstructorUsedError;

  /// The end index of the match in the full text.
  int get matchEndIndex => throw _privateConstructorUsedError;

  /// Context text before the match.
  String get contextBefore => throw _privateConstructorUsedError;

  /// Context text after the match.
  String get contextAfter => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SearchResultModelCopyWith<SearchResultModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchResultModelCopyWith<$Res> {
  factory $SearchResultModelCopyWith(
          SearchResultModel value, $Res Function(SearchResultModel) then) =
      _$SearchResultModelCopyWithImpl<$Res, SearchResultModel>;
  @useResult
  $Res call(
      {SearchResultType type,
      int surahNumber,
      int? ayahNumber,
      String matchedText,
      String fullText,
      int matchStartIndex,
      int matchEndIndex,
      String contextBefore,
      String contextAfter});
}

/// @nodoc
class _$SearchResultModelCopyWithImpl<$Res, $Val extends SearchResultModel>
    implements $SearchResultModelCopyWith<$Res> {
  _$SearchResultModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? surahNumber = null,
    Object? ayahNumber = freezed,
    Object? matchedText = null,
    Object? fullText = null,
    Object? matchStartIndex = null,
    Object? matchEndIndex = null,
    Object? contextBefore = null,
    Object? contextAfter = null,
  }) {
    return _then(_value.copyWith(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as SearchResultType,
      surahNumber: null == surahNumber
          ? _value.surahNumber
          : surahNumber // ignore: cast_nullable_to_non_nullable
              as int,
      ayahNumber: freezed == ayahNumber
          ? _value.ayahNumber
          : ayahNumber // ignore: cast_nullable_to_non_nullable
              as int?,
      matchedText: null == matchedText
          ? _value.matchedText
          : matchedText // ignore: cast_nullable_to_non_nullable
              as String,
      fullText: null == fullText
          ? _value.fullText
          : fullText // ignore: cast_nullable_to_non_nullable
              as String,
      matchStartIndex: null == matchStartIndex
          ? _value.matchStartIndex
          : matchStartIndex // ignore: cast_nullable_to_non_nullable
              as int,
      matchEndIndex: null == matchEndIndex
          ? _value.matchEndIndex
          : matchEndIndex // ignore: cast_nullable_to_non_nullable
              as int,
      contextBefore: null == contextBefore
          ? _value.contextBefore
          : contextBefore // ignore: cast_nullable_to_non_nullable
              as String,
      contextAfter: null == contextAfter
          ? _value.contextAfter
          : contextAfter // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SearchResultModelImplCopyWith<$Res>
    implements $SearchResultModelCopyWith<$Res> {
  factory _$$SearchResultModelImplCopyWith(_$SearchResultModelImpl value,
          $Res Function(_$SearchResultModelImpl) then) =
      __$$SearchResultModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {SearchResultType type,
      int surahNumber,
      int? ayahNumber,
      String matchedText,
      String fullText,
      int matchStartIndex,
      int matchEndIndex,
      String contextBefore,
      String contextAfter});
}

/// @nodoc
class __$$SearchResultModelImplCopyWithImpl<$Res>
    extends _$SearchResultModelCopyWithImpl<$Res, _$SearchResultModelImpl>
    implements _$$SearchResultModelImplCopyWith<$Res> {
  __$$SearchResultModelImplCopyWithImpl(_$SearchResultModelImpl _value,
      $Res Function(_$SearchResultModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? surahNumber = null,
    Object? ayahNumber = freezed,
    Object? matchedText = null,
    Object? fullText = null,
    Object? matchStartIndex = null,
    Object? matchEndIndex = null,
    Object? contextBefore = null,
    Object? contextAfter = null,
  }) {
    return _then(_$SearchResultModelImpl(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as SearchResultType,
      surahNumber: null == surahNumber
          ? _value.surahNumber
          : surahNumber // ignore: cast_nullable_to_non_nullable
              as int,
      ayahNumber: freezed == ayahNumber
          ? _value.ayahNumber
          : ayahNumber // ignore: cast_nullable_to_non_nullable
              as int?,
      matchedText: null == matchedText
          ? _value.matchedText
          : matchedText // ignore: cast_nullable_to_non_nullable
              as String,
      fullText: null == fullText
          ? _value.fullText
          : fullText // ignore: cast_nullable_to_non_nullable
              as String,
      matchStartIndex: null == matchStartIndex
          ? _value.matchStartIndex
          : matchStartIndex // ignore: cast_nullable_to_non_nullable
              as int,
      matchEndIndex: null == matchEndIndex
          ? _value.matchEndIndex
          : matchEndIndex // ignore: cast_nullable_to_non_nullable
              as int,
      contextBefore: null == contextBefore
          ? _value.contextBefore
          : contextBefore // ignore: cast_nullable_to_non_nullable
              as String,
      contextAfter: null == contextAfter
          ? _value.contextAfter
          : contextAfter // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SearchResultModelImpl implements _SearchResultModel {
  const _$SearchResultModelImpl(
      {required this.type,
      required this.surahNumber,
      this.ayahNumber,
      required this.matchedText,
      required this.fullText,
      required this.matchStartIndex,
      required this.matchEndIndex,
      required this.contextBefore,
      required this.contextAfter});

  factory _$SearchResultModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$SearchResultModelImplFromJson(json);

  /// The type of this search result.
  @override
  final SearchResultType type;

  /// The surah number.
  @override
  final int surahNumber;

  /// The ayah number (null if result is a surah name match).
  @override
  final int? ayahNumber;

  /// The matched text content.
  @override
  final String matchedText;

  /// The full text where the match was found.
  @override
  final String fullText;

  /// The start index of the match in the full text.
  @override
  final int matchStartIndex;

  /// The end index of the match in the full text.
  @override
  final int matchEndIndex;

  /// Context text before the match.
  @override
  final String contextBefore;

  /// Context text after the match.
  @override
  final String contextAfter;

  @override
  String toString() {
    return 'SearchResultModel(type: $type, surahNumber: $surahNumber, ayahNumber: $ayahNumber, matchedText: $matchedText, fullText: $fullText, matchStartIndex: $matchStartIndex, matchEndIndex: $matchEndIndex, contextBefore: $contextBefore, contextAfter: $contextAfter)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchResultModelImpl &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.surahNumber, surahNumber) ||
                other.surahNumber == surahNumber) &&
            (identical(other.ayahNumber, ayahNumber) ||
                other.ayahNumber == ayahNumber) &&
            (identical(other.matchedText, matchedText) ||
                other.matchedText == matchedText) &&
            (identical(other.fullText, fullText) ||
                other.fullText == fullText) &&
            (identical(other.matchStartIndex, matchStartIndex) ||
                other.matchStartIndex == matchStartIndex) &&
            (identical(other.matchEndIndex, matchEndIndex) ||
                other.matchEndIndex == matchEndIndex) &&
            (identical(other.contextBefore, contextBefore) ||
                other.contextBefore == contextBefore) &&
            (identical(other.contextAfter, contextAfter) ||
                other.contextAfter == contextAfter));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      type,
      surahNumber,
      ayahNumber,
      matchedText,
      fullText,
      matchStartIndex,
      matchEndIndex,
      contextBefore,
      contextAfter);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchResultModelImplCopyWith<_$SearchResultModelImpl> get copyWith =>
      __$$SearchResultModelImplCopyWithImpl<_$SearchResultModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SearchResultModelImplToJson(
      this,
    );
  }
}

abstract class _SearchResultModel implements SearchResultModel {
  const factory _SearchResultModel(
      {required final SearchResultType type,
      required final int surahNumber,
      final int? ayahNumber,
      required final String matchedText,
      required final String fullText,
      required final int matchStartIndex,
      required final int matchEndIndex,
      required final String contextBefore,
      required final String contextAfter}) = _$SearchResultModelImpl;

  factory _SearchResultModel.fromJson(Map<String, dynamic> json) =
      _$SearchResultModelImpl.fromJson;

  @override

  /// The type of this search result.
  SearchResultType get type;
  @override

  /// The surah number.
  int get surahNumber;
  @override

  /// The ayah number (null if result is a surah name match).
  int? get ayahNumber;
  @override

  /// The matched text content.
  String get matchedText;
  @override

  /// The full text where the match was found.
  String get fullText;
  @override

  /// The start index of the match in the full text.
  int get matchStartIndex;
  @override

  /// The end index of the match in the full text.
  int get matchEndIndex;
  @override

  /// Context text before the match.
  String get contextBefore;
  @override

  /// Context text after the match.
  String get contextAfter;
  @override
  @JsonKey(ignore: true)
  _$$SearchResultModelImplCopyWith<_$SearchResultModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
