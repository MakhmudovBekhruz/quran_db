import '../models/full/surah_model.dart';
import '../models/full/ayah_model.dart';
import '../models/full/juz_model.dart';

/// Cache manager for QuranDb data.
/// Provides permanent caching (load once, keep forever during app lifecycle).
class QuranDbCache {
  QuranDbCache._();

  static final QuranDbCache _instance = QuranDbCache._();

  /// Singleton instance of the cache.
  static QuranDbCache get instance => _instance;

  // Cached data
  List<SurahModel>? _surahs;
  List<JuzModel>? _juzList;
  Map<int, List<AyahModel>>? _ayahsBySurah;

  /// Whether surahs are cached.
  bool get hasSurahs => _surahs != null;

  /// Whether juz list is cached.
  bool get hasJuzList => _juzList != null;

  /// Gets cached surahs.
  List<SurahModel>? get surahs => _surahs;

  /// Gets cached juz list.
  List<JuzModel>? get juzList => _juzList;

  /// Caches the surah list.
  void cacheSurahs(List<SurahModel> surahs) {
    _surahs = List.unmodifiable(surahs);
  }

  /// Caches the juz list.
  void cacheJuzList(List<JuzModel> juzList) {
    _juzList = List.unmodifiable(juzList);
  }

  /// Gets a cached surah by number.
  SurahModel? getSurahByNumber(int number) {
    return _surahs?.where((s) => s.number == number).firstOrNull;
  }

  /// Gets a cached juz by number.
  JuzModel? getJuzByNumber(int number) {
    return _juzList?.where((j) => j.number == number).firstOrNull;
  }

  /// Gets cached ayahs for a surah.
  List<AyahModel>? getAyahsBySurah(int surahNumber) {
    return _ayahsBySurah?[surahNumber];
  }

  /// Caches ayahs for a surah.
  void cacheAyahsBySurah(int surahNumber, List<AyahModel> ayahs) {
    _ayahsBySurah ??= {};
    _ayahsBySurah![surahNumber] = List.unmodifiable(ayahs);
  }

  /// Whether ayahs for a specific surah are cached.
  bool hasAyahsForSurah(int surahNumber) {
    return _ayahsBySurah?.containsKey(surahNumber) ?? false;
  }

  /// Clears all cached data.
  void clear() {
    _surahs = null;
    _juzList = null;
    _ayahsBySurah = null;
  }
}
