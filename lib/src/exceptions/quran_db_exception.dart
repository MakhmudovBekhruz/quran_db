/// Base exception class for QuranDb errors.
class QuranDbException implements Exception {
  /// Creates a new [QuranDbException] with the given [message].
  const QuranDbException(this.message);

  /// The error message.
  final String message;

  @override
  String toString() => 'QuranDbException: $message';
}

/// Exception thrown when the database has not been initialized.
class QuranDbNotInitializedException extends QuranDbException {
  /// Creates a new [QuranDbNotInitializedException].
  const QuranDbNotInitializedException()
      : super(
            'QuranDb has not been initialized. Call QuranDb.instance.init() first.');
}

/// Exception thrown when a surah is not found.
class SurahNotFoundException extends QuranDbException {
  /// Creates a new [SurahNotFoundException] for the given [surahNumber].
  const SurahNotFoundException(this.surahNumber)
      : super('Surah with number $surahNumber not found.');

  /// The surah number that was not found.
  final int surahNumber;
}

/// Exception thrown when an ayah is not found.
class AyahNotFoundException extends QuranDbException {
  /// Creates a new [AyahNotFoundException] for the given [surahNumber] and [ayahNumber].
  const AyahNotFoundException(this.surahNumber, this.ayahNumber)
      : super('Ayah $ayahNumber in surah $surahNumber not found.');

  /// The surah number.
  final int surahNumber;

  /// The ayah number.
  final int ayahNumber;
}

/// Exception thrown when a juz is not found.
class JuzNotFoundException extends QuranDbException {
  /// Creates a new [JuzNotFoundException] for the given [juzNumber].
  const JuzNotFoundException(this.juzNumber)
      : super('Juz with number $juzNumber not found.');

  /// The juz number that was not found.
  final int juzNumber;
}

/// Exception thrown when a page is not found.
class PageNotFoundException extends QuranDbException {
  /// Creates a new [PageNotFoundException] for the given [pageNumber].
  const PageNotFoundException(this.pageNumber)
      : super('Page with number $pageNumber not found.');

  /// The page number that was not found.
  final int pageNumber;
}

/// Exception thrown when database initialization fails.
class DatabaseInitializationException extends QuranDbException {
  /// Creates a new [DatabaseInitializationException] with the given [message].
  const DatabaseInitializationException(String message)
      : super('Failed to initialize database: $message');
}

/// Exception thrown when an invalid page number is provided for pagination.
class InvalidPageException extends QuranDbException {
  /// Creates a new [InvalidPageException] for the given [page].
  const InvalidPageException(this.page)
      : super('Invalid page number: $page. Page must be >= 1.');

  /// The invalid page number.
  final int page;
}
