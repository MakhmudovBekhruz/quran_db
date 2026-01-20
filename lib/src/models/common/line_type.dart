/// Types of lines that can appear on a Quran page.
enum LineType {
  /// Surah header line
  surahHeader('surah-header'),

  /// Basmala line
  basmala('basmala'),

  /// Regular text line
  text('text');

  const LineType(this.value);

  /// The database string value for this line type.
  final String value;

  /// Creates a [LineType] from its database string value.
  static LineType fromValue(String value) {
    return LineType.values.firstWhere(
      (type) => type.value == value,
      orElse: () => LineType.text,
    );
  }
}
