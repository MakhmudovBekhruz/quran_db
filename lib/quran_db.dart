/// QuranDb - A comprehensive Quran database plugin for Flutter.
///
/// This plugin provides access to Quran data including surahs, ayahs,
/// juz, and page information with multi-language support.
///
/// ## Getting Started
///
/// ```dart
/// import 'package:quran_db/quran_db.dart';
///
/// // Initialize the database
/// await QuranDb.instance.init();
///
/// // Get all surahs in English
/// final surahs = await QuranDb.instance.repository.getAllSurahs(QuranLanguage.english);
///
/// // Get ayahs for a specific surah
/// final ayahs = await QuranDb.instance.repository.getAyahsBySurah(1, QuranLanguage.english);
///
/// // Search for text
/// final results = await QuranDb.instance.repository.search('mercy', QuranLanguage.english);
/// ```
library quran_db;

// Main entry point
export 'src/quran_db.dart';

// Repository (abstract only)
export 'src/repository/quran_repository.dart';

// Localized models (exported to users)
export 'src/models/localized/localized_surah_model.dart';
export 'src/models/localized/localized_ayah_model.dart';
export 'src/models/localized/localized_juz_model.dart';

// Common models
export 'src/models/common/quran_language.dart';
export 'src/models/common/line_type.dart';
export 'src/models/common/quran_page_model.dart';
export 'src/models/common/paginated_result_model.dart';
export 'src/models/common/search_result_model.dart';

// Full models (needed for QuranPageModel)
export 'src/models/full/quran_line_model.dart';
export 'src/models/full/quran_line_word_model.dart';

// Exceptions
export 'src/exceptions/quran_db_exception.dart';
