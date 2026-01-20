// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'quran_page_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

QuranPageModel _$QuranPageModelFromJson(Map<String, dynamic> json) {
  return _QuranPageModel.fromJson(json);
}

/// @nodoc
mixin _$QuranPageModel {
  /// The page number.
  int get pageNumber => throw _privateConstructorUsedError;

  /// List of lines on this page with their words.
  List<QuranPageLineModel> get lines => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $QuranPageModelCopyWith<QuranPageModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuranPageModelCopyWith<$Res> {
  factory $QuranPageModelCopyWith(
          QuranPageModel value, $Res Function(QuranPageModel) then) =
      _$QuranPageModelCopyWithImpl<$Res, QuranPageModel>;
  @useResult
  $Res call({int pageNumber, List<QuranPageLineModel> lines});
}

/// @nodoc
class _$QuranPageModelCopyWithImpl<$Res, $Val extends QuranPageModel>
    implements $QuranPageModelCopyWith<$Res> {
  _$QuranPageModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pageNumber = null,
    Object? lines = null,
  }) {
    return _then(_value.copyWith(
      pageNumber: null == pageNumber
          ? _value.pageNumber
          : pageNumber // ignore: cast_nullable_to_non_nullable
              as int,
      lines: null == lines
          ? _value.lines
          : lines // ignore: cast_nullable_to_non_nullable
              as List<QuranPageLineModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$QuranPageModelImplCopyWith<$Res>
    implements $QuranPageModelCopyWith<$Res> {
  factory _$$QuranPageModelImplCopyWith(_$QuranPageModelImpl value,
          $Res Function(_$QuranPageModelImpl) then) =
      __$$QuranPageModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int pageNumber, List<QuranPageLineModel> lines});
}

/// @nodoc
class __$$QuranPageModelImplCopyWithImpl<$Res>
    extends _$QuranPageModelCopyWithImpl<$Res, _$QuranPageModelImpl>
    implements _$$QuranPageModelImplCopyWith<$Res> {
  __$$QuranPageModelImplCopyWithImpl(
      _$QuranPageModelImpl _value, $Res Function(_$QuranPageModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pageNumber = null,
    Object? lines = null,
  }) {
    return _then(_$QuranPageModelImpl(
      pageNumber: null == pageNumber
          ? _value.pageNumber
          : pageNumber // ignore: cast_nullable_to_non_nullable
              as int,
      lines: null == lines
          ? _value._lines
          : lines // ignore: cast_nullable_to_non_nullable
              as List<QuranPageLineModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$QuranPageModelImpl implements _QuranPageModel {
  const _$QuranPageModelImpl(
      {required this.pageNumber, required final List<QuranPageLineModel> lines})
      : _lines = lines;

  factory _$QuranPageModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$QuranPageModelImplFromJson(json);

  /// The page number.
  @override
  final int pageNumber;

  /// List of lines on this page with their words.
  final List<QuranPageLineModel> _lines;

  /// List of lines on this page with their words.
  @override
  List<QuranPageLineModel> get lines {
    if (_lines is EqualUnmodifiableListView) return _lines;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_lines);
  }

  @override
  String toString() {
    return 'QuranPageModel(pageNumber: $pageNumber, lines: $lines)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QuranPageModelImpl &&
            (identical(other.pageNumber, pageNumber) ||
                other.pageNumber == pageNumber) &&
            const DeepCollectionEquality().equals(other._lines, _lines));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, pageNumber, const DeepCollectionEquality().hash(_lines));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$QuranPageModelImplCopyWith<_$QuranPageModelImpl> get copyWith =>
      __$$QuranPageModelImplCopyWithImpl<_$QuranPageModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$QuranPageModelImplToJson(
      this,
    );
  }
}

abstract class _QuranPageModel implements QuranPageModel {
  const factory _QuranPageModel(
      {required final int pageNumber,
      required final List<QuranPageLineModel> lines}) = _$QuranPageModelImpl;

  factory _QuranPageModel.fromJson(Map<String, dynamic> json) =
      _$QuranPageModelImpl.fromJson;

  @override

  /// The page number.
  int get pageNumber;
  @override

  /// List of lines on this page with their words.
  List<QuranPageLineModel> get lines;
  @override
  @JsonKey(ignore: true)
  _$$QuranPageModelImplCopyWith<_$QuranPageModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

QuranPageLineModel _$QuranPageLineModelFromJson(Map<String, dynamic> json) {
  return _QuranPageLineModel.fromJson(json);
}

/// @nodoc
mixin _$QuranPageLineModel {
  /// The line data.
  QuranLineModel get line => throw _privateConstructorUsedError;

  /// List of words in this line.
  List<QuranLineWordModel> get words => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $QuranPageLineModelCopyWith<QuranPageLineModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuranPageLineModelCopyWith<$Res> {
  factory $QuranPageLineModelCopyWith(
          QuranPageLineModel value, $Res Function(QuranPageLineModel) then) =
      _$QuranPageLineModelCopyWithImpl<$Res, QuranPageLineModel>;
  @useResult
  $Res call({QuranLineModel line, List<QuranLineWordModel> words});

  $QuranLineModelCopyWith<$Res> get line;
}

/// @nodoc
class _$QuranPageLineModelCopyWithImpl<$Res, $Val extends QuranPageLineModel>
    implements $QuranPageLineModelCopyWith<$Res> {
  _$QuranPageLineModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? line = null,
    Object? words = null,
  }) {
    return _then(_value.copyWith(
      line: null == line
          ? _value.line
          : line // ignore: cast_nullable_to_non_nullable
              as QuranLineModel,
      words: null == words
          ? _value.words
          : words // ignore: cast_nullable_to_non_nullable
              as List<QuranLineWordModel>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $QuranLineModelCopyWith<$Res> get line {
    return $QuranLineModelCopyWith<$Res>(_value.line, (value) {
      return _then(_value.copyWith(line: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$QuranPageLineModelImplCopyWith<$Res>
    implements $QuranPageLineModelCopyWith<$Res> {
  factory _$$QuranPageLineModelImplCopyWith(_$QuranPageLineModelImpl value,
          $Res Function(_$QuranPageLineModelImpl) then) =
      __$$QuranPageLineModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({QuranLineModel line, List<QuranLineWordModel> words});

  @override
  $QuranLineModelCopyWith<$Res> get line;
}

/// @nodoc
class __$$QuranPageLineModelImplCopyWithImpl<$Res>
    extends _$QuranPageLineModelCopyWithImpl<$Res, _$QuranPageLineModelImpl>
    implements _$$QuranPageLineModelImplCopyWith<$Res> {
  __$$QuranPageLineModelImplCopyWithImpl(_$QuranPageLineModelImpl _value,
      $Res Function(_$QuranPageLineModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? line = null,
    Object? words = null,
  }) {
    return _then(_$QuranPageLineModelImpl(
      line: null == line
          ? _value.line
          : line // ignore: cast_nullable_to_non_nullable
              as QuranLineModel,
      words: null == words
          ? _value._words
          : words // ignore: cast_nullable_to_non_nullable
              as List<QuranLineWordModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$QuranPageLineModelImpl implements _QuranPageLineModel {
  const _$QuranPageLineModelImpl(
      {required this.line, required final List<QuranLineWordModel> words})
      : _words = words;

  factory _$QuranPageLineModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$QuranPageLineModelImplFromJson(json);

  /// The line data.
  @override
  final QuranLineModel line;

  /// List of words in this line.
  final List<QuranLineWordModel> _words;

  /// List of words in this line.
  @override
  List<QuranLineWordModel> get words {
    if (_words is EqualUnmodifiableListView) return _words;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_words);
  }

  @override
  String toString() {
    return 'QuranPageLineModel(line: $line, words: $words)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QuranPageLineModelImpl &&
            (identical(other.line, line) || other.line == line) &&
            const DeepCollectionEquality().equals(other._words, _words));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, line, const DeepCollectionEquality().hash(_words));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$QuranPageLineModelImplCopyWith<_$QuranPageLineModelImpl> get copyWith =>
      __$$QuranPageLineModelImplCopyWithImpl<_$QuranPageLineModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$QuranPageLineModelImplToJson(
      this,
    );
  }
}

abstract class _QuranPageLineModel implements QuranPageLineModel {
  const factory _QuranPageLineModel(
          {required final QuranLineModel line,
          required final List<QuranLineWordModel> words}) =
      _$QuranPageLineModelImpl;

  factory _QuranPageLineModel.fromJson(Map<String, dynamic> json) =
      _$QuranPageLineModelImpl.fromJson;

  @override

  /// The line data.
  QuranLineModel get line;
  @override

  /// List of words in this line.
  List<QuranLineWordModel> get words;
  @override
  @JsonKey(ignore: true)
  _$$QuranPageLineModelImplCopyWith<_$QuranPageLineModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
