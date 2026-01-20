import 'cache/quran_db_cache.dart';
import 'database/quran_database.dart';
import 'exceptions/quran_db_exception.dart';
import 'repository/quran_repository.dart';
import 'repository/quran_repository_impl.dart';

/// Main entry point for the QuranDb plugin.
///
/// Use [QuranDb.instance] to access the singleton instance,
/// then call [init] to initialize the database before using [repository].
///
/// Example:
/// ```dart
/// await QuranDb.instance.init();
/// final surahs = await QuranDb.instance.repository.getAllSurahs(QuranLanguage.english);
/// ```
class QuranDb {
  QuranDb._();

  static final QuranDb _instance = QuranDb._();

  /// Singleton instance of QuranDb.
  static QuranDb get instance => _instance;

  QuranDatabase? _database;
  QuranRepository? _repository;
  bool _initialized = false;

  /// Whether the database has been initialized.
  bool get isInitialized => _initialized;

  /// Initializes the Quran database.
  ///
  /// Must be called before accessing [repository].
  ///
  /// Parameters:
  /// - [customPath]: Optional custom path to the database file.
  ///   If not provided, the database will be copied from assets
  ///   to the application documents directory.
  ///
  /// Throws [DatabaseInitializationException] if initialization fails.
  Future<void> init({String? customPath}) async {
    if (_initialized) {
      return;
    }

    try {
      _database = await openQuranDatabase(customPath: customPath);
      _repository = QuranRepositoryImpl(_database!);
      _initialized = true;
    } catch (e) {
      throw DatabaseInitializationException(e.toString());
    }
  }

  /// Gets the Quran repository for accessing data.
  ///
  /// Throws [QuranDbNotInitializedException] if [init] has not been called.
  QuranRepository get repository {
    if (!_initialized || _repository == null) {
      throw const QuranDbNotInitializedException();
    }
    return _repository!;
  }

  /// Closes the database connection and clears the cache.
  ///
  /// After calling this, you must call [init] again to use the database.
  Future<void> close() async {
    if (_database != null) {
      await _database!.close();
      _database = null;
    }
    _repository = null;
    _initialized = false;
    QuranDbCache.instance.clear();
  }
}
