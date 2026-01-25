/// Represents the type of revelation (where the surah was revealed).
enum RevelationType {
  /// Revealed in Mecca.
  meccan('MECCAN'),

  /// Revealed in Medina.
  medinan('MEDINAN');

  const RevelationType(this.value);

  /// The database value for this revelation type.
  final String value;

  /// Creates a [RevelationType] from a database value.
  static RevelationType fromValue(String value) {
    return RevelationType.values.firstWhere(
      (e) => e.value == value,
      orElse: () => throw ArgumentError('Unknown revelation type: $value'),
    );
  }
}
