import '../models/common/quran_language.dart';
import '../models/common/paginated_result_model.dart';
import '../models/common/search_result_model.dart';
import '../models/common/quran_page_model.dart';
import '../models/localized/localized_surah_model.dart';
import '../models/localized/localized_ayah_model.dart';
import '../models/localized/localized_juz_model.dart';

/// Abstract repository for accessing Quran data.
///
/// This repository provides methods to fetch Quran data including surahs,
/// ayahs, juz, and page information. All data is returned in a localized
/// format based on the provided [QuranLanguage].
abstract class QuranRepository {
  // ============ Surah Methods ============

  /// Gets all surahs in the specified language.
  Future<List<LocalizedSurahModel>> getAllSurahs(QuranLanguage language);

  /// Gets a surah by its number (1-114).
  ///
  /// Throws [SurahNotFoundException] if the surah does not exist.
  Future<LocalizedSurahModel> getSurahByNumber(
      int surahNumber, QuranLanguage language);

  /// Gets all surahs that are part of a specific juz.
  Future<List<LocalizedSurahModel>> getSurahsByJuz(
      int juzNumber, QuranLanguage language);

  // ============ Ayah Methods ============

  /// Gets all ayahs for a specific surah.
  ///
  /// Throws [SurahNotFoundException] if the surah does not exist.
  Future<List<LocalizedAyahModel>> getAyahsBySurah(
      int surahNumber, QuranLanguage language);

  /// Gets a specific ayah by its location (surah and ayah number).
  ///
  /// Throws [AyahNotFoundException] if the ayah does not exist.
  Future<LocalizedAyahModel> getAyahByLocation(
    int surahNumber,
    int ayahNumber,
    QuranLanguage language,
  );

  // ============ Juz Methods ============

  /// Gets all juz (30 parts of the Quran).
  Future<List<LocalizedJuzModel>> getAllJuz();

  /// Gets a juz by its number (1-30).
  ///
  /// Throws [JuzNotFoundException] if the juz does not exist.
  Future<LocalizedJuzModel> getJuzByNumber(int juzNumber);

  // ============ Page Methods ============

  /// Gets a complete Quran page with all its lines and words.
  ///
  /// Throws [PageNotFoundException] if the page does not exist.
  Future<QuranPageModel> getPageByNumber(
    int pageNumber,
    QuranLanguage language,
  );

  // ============ Search Methods ============

  /// Searches for ayahs and surah names containing the query text.
  ///
  /// Returns a paginated result with search results including match context.
  ///
  /// Parameters:
  /// - [query]: The search text.
  /// - [language]: The language to search in.
  /// - [page]: The page number (1-indexed). Default is 1.
  /// - [pageSize]: Number of results per page. Default is 50.
  ///
  /// Throws [InvalidPageException] if page is less than 1.
  Future<PaginatedResultModel<SearchResultModel>> search(
    String query,
    QuranLanguage language, {
    int page = 1,
    int pageSize = 50,
  });

  /// Searches only ayah translations for the query text.
  ///
  /// Returns a paginated result with search results including match context.
  ///
  /// Parameters:
  /// - [query]: The search text.
  /// - [language]: The language to search in.
  /// - [page]: The page number (1-indexed). Default is 1.
  /// - [pageSize]: Number of results per page. Default is 50.
  ///
  /// Throws [InvalidPageException] if page is less than 1.
  Future<PaginatedResultModel<SearchResultModel>> searchAyahs(
    String query,
    QuranLanguage language, {
    int page = 1,
    int pageSize = 50,
  });

  /// Searches only surah names for the query text.
  ///
  /// Parameters:
  /// - [query]: The search text.
  /// - [language]: The language to search in.
  Future<List<SearchResultModel>> searchSurahs(
    String query,
    QuranLanguage language,
  );

  // ============ Additional Ayah Methods ============

  /// Gets all ayahs in a specific juz.
  ///
  /// Throws [JuzNotFoundException] if the juz does not exist.
  Future<List<LocalizedAyahModel>> getAyahsByJuz(
    int juzNumber,
    QuranLanguage language,
  );

  /// Gets the next ayah after the specified location.
  ///
  /// Returns `null` if at the end of the Quran (Surah 114, last ayah).
  /// Automatically handles surah boundaries.
  Future<LocalizedAyahModel?> getNextAyah(
    int surahNumber,
    int ayahNumber,
    QuranLanguage language,
  );

  /// Gets the previous ayah before the specified location.
  ///
  /// Returns `null` if at the beginning of the Quran (Surah 1, Ayah 1).
  /// Automatically handles surah boundaries.
  Future<LocalizedAyahModel?> getPreviousAyah(
    int surahNumber,
    int ayahNumber,
    QuranLanguage language,
  );

  /// Gets ayahs in a specific range.
  ///
  /// Useful for reading sessions and bookmarks.
  /// The range is inclusive of both start and end positions.
  ///
  /// Throws [AyahNotFoundException] if start or end ayah does not exist.
  Future<List<LocalizedAyahModel>> getAyahsInRange({
    required int startSurahNumber,
    required int startAyahNumber,
    required int endSurahNumber,
    required int endAyahNumber,
    required QuranLanguage language,
  });

  /// Gets a random ayah from the Quran.
  Future<LocalizedAyahModel> getRandomAyah(QuranLanguage language);

  // ============ Additional Juz Methods ============

  /// Gets the juz that contains a specific ayah.
  ///
  /// Throws [AyahNotFoundException] if the ayah location is invalid.
  Future<LocalizedJuzModel> getJuzByAyahLocation(
    int surahNumber,
    int ayahNumber,
  );

  // ============ Additional Page Methods ============

  /// Gets the page number for a specific ayah location.
  ///
  /// Throws [AyahNotFoundException] if the ayah does not exist.
  Future<int> getPageNumberByAyahLocation(
    int surahNumber,
    int ayahNumber,
  );
}
