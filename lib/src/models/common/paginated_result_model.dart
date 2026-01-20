import 'package:freezed_annotation/freezed_annotation.dart';

part 'paginated_result_model.freezed.dart';
part 'paginated_result_model.g.dart';

/// A generic paginated result wrapper for search queries.
@Freezed(genericArgumentFactories: true)
class PaginatedResultModel<T> with _$PaginatedResultModel<T> {
  const factory PaginatedResultModel({
    /// The list of items in the current page.
    required List<T> items,

    /// The current page number (1-indexed).
    required int currentPage,

    /// The total number of pages.
    required int totalPages,

    /// The total number of items across all pages.
    required int totalItems,

    /// The number of items per page.
    required int pageSize,

    /// Whether there is a next page.
    required bool hasNextPage,

    /// Whether there is a previous page.
    required bool hasPreviousPage,
  }) = _PaginatedResultModel<T>;

  factory PaginatedResultModel.fromJson(
    Map<String, dynamic> json,
    T Function(Object? json) fromJsonT,
  ) =>
      _$PaginatedResultModelFromJson(json, fromJsonT);
}
