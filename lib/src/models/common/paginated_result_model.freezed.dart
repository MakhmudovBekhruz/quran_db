// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'paginated_result_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PaginatedResultModel<T> _$PaginatedResultModelFromJson<T>(
    Map<String, dynamic> json, T Function(Object?) fromJsonT) {
  return _PaginatedResultModel<T>.fromJson(json, fromJsonT);
}

/// @nodoc
mixin _$PaginatedResultModel<T> {
  /// The list of items in the current page.
  List<T> get items => throw _privateConstructorUsedError;

  /// The current page number (1-indexed).
  int get currentPage => throw _privateConstructorUsedError;

  /// The total number of pages.
  int get totalPages => throw _privateConstructorUsedError;

  /// The total number of items across all pages.
  int get totalItems => throw _privateConstructorUsedError;

  /// The number of items per page.
  int get pageSize => throw _privateConstructorUsedError;

  /// Whether there is a next page.
  bool get hasNextPage => throw _privateConstructorUsedError;

  /// Whether there is a previous page.
  bool get hasPreviousPage => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson(Object? Function(T) toJsonT) =>
      throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PaginatedResultModelCopyWith<T, PaginatedResultModel<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaginatedResultModelCopyWith<T, $Res> {
  factory $PaginatedResultModelCopyWith(PaginatedResultModel<T> value,
          $Res Function(PaginatedResultModel<T>) then) =
      _$PaginatedResultModelCopyWithImpl<T, $Res, PaginatedResultModel<T>>;
  @useResult
  $Res call(
      {List<T> items,
      int currentPage,
      int totalPages,
      int totalItems,
      int pageSize,
      bool hasNextPage,
      bool hasPreviousPage});
}

/// @nodoc
class _$PaginatedResultModelCopyWithImpl<T, $Res,
        $Val extends PaginatedResultModel<T>>
    implements $PaginatedResultModelCopyWith<T, $Res> {
  _$PaginatedResultModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? items = null,
    Object? currentPage = null,
    Object? totalPages = null,
    Object? totalItems = null,
    Object? pageSize = null,
    Object? hasNextPage = null,
    Object? hasPreviousPage = null,
  }) {
    return _then(_value.copyWith(
      items: null == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<T>,
      currentPage: null == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int,
      totalPages: null == totalPages
          ? _value.totalPages
          : totalPages // ignore: cast_nullable_to_non_nullable
              as int,
      totalItems: null == totalItems
          ? _value.totalItems
          : totalItems // ignore: cast_nullable_to_non_nullable
              as int,
      pageSize: null == pageSize
          ? _value.pageSize
          : pageSize // ignore: cast_nullable_to_non_nullable
              as int,
      hasNextPage: null == hasNextPage
          ? _value.hasNextPage
          : hasNextPage // ignore: cast_nullable_to_non_nullable
              as bool,
      hasPreviousPage: null == hasPreviousPage
          ? _value.hasPreviousPage
          : hasPreviousPage // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PaginatedResultModelImplCopyWith<T, $Res>
    implements $PaginatedResultModelCopyWith<T, $Res> {
  factory _$$PaginatedResultModelImplCopyWith(
          _$PaginatedResultModelImpl<T> value,
          $Res Function(_$PaginatedResultModelImpl<T>) then) =
      __$$PaginatedResultModelImplCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call(
      {List<T> items,
      int currentPage,
      int totalPages,
      int totalItems,
      int pageSize,
      bool hasNextPage,
      bool hasPreviousPage});
}

/// @nodoc
class __$$PaginatedResultModelImplCopyWithImpl<T, $Res>
    extends _$PaginatedResultModelCopyWithImpl<T, $Res,
        _$PaginatedResultModelImpl<T>>
    implements _$$PaginatedResultModelImplCopyWith<T, $Res> {
  __$$PaginatedResultModelImplCopyWithImpl(_$PaginatedResultModelImpl<T> _value,
      $Res Function(_$PaginatedResultModelImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? items = null,
    Object? currentPage = null,
    Object? totalPages = null,
    Object? totalItems = null,
    Object? pageSize = null,
    Object? hasNextPage = null,
    Object? hasPreviousPage = null,
  }) {
    return _then(_$PaginatedResultModelImpl<T>(
      items: null == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<T>,
      currentPage: null == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int,
      totalPages: null == totalPages
          ? _value.totalPages
          : totalPages // ignore: cast_nullable_to_non_nullable
              as int,
      totalItems: null == totalItems
          ? _value.totalItems
          : totalItems // ignore: cast_nullable_to_non_nullable
              as int,
      pageSize: null == pageSize
          ? _value.pageSize
          : pageSize // ignore: cast_nullable_to_non_nullable
              as int,
      hasNextPage: null == hasNextPage
          ? _value.hasNextPage
          : hasNextPage // ignore: cast_nullable_to_non_nullable
              as bool,
      hasPreviousPage: null == hasPreviousPage
          ? _value.hasPreviousPage
          : hasPreviousPage // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable(genericArgumentFactories: true)
class _$PaginatedResultModelImpl<T> implements _PaginatedResultModel<T> {
  const _$PaginatedResultModelImpl(
      {required final List<T> items,
      required this.currentPage,
      required this.totalPages,
      required this.totalItems,
      required this.pageSize,
      required this.hasNextPage,
      required this.hasPreviousPage})
      : _items = items;

  factory _$PaginatedResultModelImpl.fromJson(
          Map<String, dynamic> json, T Function(Object?) fromJsonT) =>
      _$$PaginatedResultModelImplFromJson(json, fromJsonT);

  /// The list of items in the current page.
  final List<T> _items;

  /// The list of items in the current page.
  @override
  List<T> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  /// The current page number (1-indexed).
  @override
  final int currentPage;

  /// The total number of pages.
  @override
  final int totalPages;

  /// The total number of items across all pages.
  @override
  final int totalItems;

  /// The number of items per page.
  @override
  final int pageSize;

  /// Whether there is a next page.
  @override
  final bool hasNextPage;

  /// Whether there is a previous page.
  @override
  final bool hasPreviousPage;

  @override
  String toString() {
    return 'PaginatedResultModel<$T>(items: $items, currentPage: $currentPage, totalPages: $totalPages, totalItems: $totalItems, pageSize: $pageSize, hasNextPage: $hasNextPage, hasPreviousPage: $hasPreviousPage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaginatedResultModelImpl<T> &&
            const DeepCollectionEquality().equals(other._items, _items) &&
            (identical(other.currentPage, currentPage) ||
                other.currentPage == currentPage) &&
            (identical(other.totalPages, totalPages) ||
                other.totalPages == totalPages) &&
            (identical(other.totalItems, totalItems) ||
                other.totalItems == totalItems) &&
            (identical(other.pageSize, pageSize) ||
                other.pageSize == pageSize) &&
            (identical(other.hasNextPage, hasNextPage) ||
                other.hasNextPage == hasNextPage) &&
            (identical(other.hasPreviousPage, hasPreviousPage) ||
                other.hasPreviousPage == hasPreviousPage));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_items),
      currentPage,
      totalPages,
      totalItems,
      pageSize,
      hasNextPage,
      hasPreviousPage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PaginatedResultModelImplCopyWith<T, _$PaginatedResultModelImpl<T>>
      get copyWith => __$$PaginatedResultModelImplCopyWithImpl<T,
          _$PaginatedResultModelImpl<T>>(this, _$identity);

  @override
  Map<String, dynamic> toJson(Object? Function(T) toJsonT) {
    return _$$PaginatedResultModelImplToJson<T>(this, toJsonT);
  }
}

abstract class _PaginatedResultModel<T> implements PaginatedResultModel<T> {
  const factory _PaginatedResultModel(
      {required final List<T> items,
      required final int currentPage,
      required final int totalPages,
      required final int totalItems,
      required final int pageSize,
      required final bool hasNextPage,
      required final bool hasPreviousPage}) = _$PaginatedResultModelImpl<T>;

  factory _PaginatedResultModel.fromJson(
          Map<String, dynamic> json, T Function(Object?) fromJsonT) =
      _$PaginatedResultModelImpl<T>.fromJson;

  @override

  /// The list of items in the current page.
  List<T> get items;
  @override

  /// The current page number (1-indexed).
  int get currentPage;
  @override

  /// The total number of pages.
  int get totalPages;
  @override

  /// The total number of items across all pages.
  int get totalItems;
  @override

  /// The number of items per page.
  int get pageSize;
  @override

  /// Whether there is a next page.
  bool get hasNextPage;
  @override

  /// Whether there is a previous page.
  bool get hasPreviousPage;
  @override
  @JsonKey(ignore: true)
  _$$PaginatedResultModelImplCopyWith<T, _$PaginatedResultModelImpl<T>>
      get copyWith => throw _privateConstructorUsedError;
}
