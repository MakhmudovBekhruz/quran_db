import 'dart:math';

import '../cache/quran_db_cache.dart';
import '../database/quran_database.dart';
import '../exceptions/quran_db_exception.dart';
import '../models/common/line_type.dart';
import '../models/common/paginated_result_model.dart';
import '../models/common/quran_language.dart';
import '../models/common/quran_page_model.dart';
import '../models/common/revelation_type.dart';
import '../models/common/search_result_model.dart';
import '../models/full/ayah_model.dart';
import '../models/full/juz_model.dart';
import '../models/full/quran_line_model.dart';
import '../models/full/quran_line_word_model.dart';
import '../models/full/surah_model.dart';
import '../models/localized/localized_ayah_model.dart';
import '../models/localized/localized_juz_model.dart';
import '../models/localized/localized_surah_model.dart';
import 'quran_repository.dart';

/// Implementation of [QuranRepository] using Drift database.
class QuranRepositoryImpl implements QuranRepository {
  /// Creates a new [QuranRepositoryImpl] with the given [database].
  QuranRepositoryImpl(this._database);

  final QuranDatabase _database;
  final QuranDbCache _cache = QuranDbCache.instance;

  // ============ Internal Converters ============

  SurahModel _surahDataToModel(SurahData data) {
    return SurahModel(
      number: data.number,
      nameAr: data.nameAr,
      nameEn: data.nameEn,
      nameRu: data.nameRu,
      nameUzLat: data.nameUzLat,
      nameUzCyr: data.nameUzCyr,
      nameEnMeaning: data.nameEnMeaning,
      nameRuMeaning: data.nameRuMeaning,
      nameUzLatMeaning: data.nameUzLatMeaning,
      nameUzCyrMeaning: data.nameUzCyrMeaning,
      versesCount: data.versesCount,
      pageStart: data.pageStart,
      revelationType: RevelationType.fromValue(data.revelationType),
    );
  }

  AyahModel _ayahDataToModel(Ayah data) {
    return AyahModel(
      id: data.id,
      surahId: data.surahId,
      ayahNumber: data.ayahNumber,
      textEn: data.textEn,
      textRu: data.textRu,
      textUzLat: data.textUzLat,
      textUzCyr: data.textUzCyr,
    );
  }

  JuzModel _juzDataToModel(JuzData data) {
    return JuzModel(
      number: data.number,
      nameAr: data.nameAr,
      nameEn: data.nameEn,
      startSurahNumber: data.startSurahNumber,
      startAyahNumber: data.startAyahNumber,
      endSurahNumber: data.endSurahNumber,
      endAyahNumber: data.endAyahNumber,
      pageStart: data.pageStart,
    );
  }

  QuranLineModel _lineDataToModel(QuranLineData data) {
    return QuranLineModel(
      id: data.id,
      pageNumber: data.pageNumber,
      type: LineType.fromValue(data.type),
      verseRange: data.verseRange,
    );
  }

  QuranLineWordModel _wordDataToModel(QuranLineWordData data) {
    return QuranLineWordModel(
      id: data.id,
      location: data.location,
      word: data.word,
      qocV1: data.qocV1,
      qocV2: data.qocV2,
      lineId: data.lineId,
    );
  }

  LocalizedSurahModel _localizeSurah(SurahModel surah, QuranLanguage language) {
    String name;
    String meaning;
    String revelationCity;
    switch (language) {
      case QuranLanguage.english:
        name = surah.nameEn;
        meaning = surah.nameEnMeaning;
        revelationCity =
            surah.revelationType == RevelationType.meccan ? 'Mecca' : 'Medina';
        break;
      case QuranLanguage.russian:
        name = surah.nameRu;
        meaning = surah.nameRuMeaning;
        revelationCity =
            surah.revelationType == RevelationType.meccan ? 'Мекка' : 'Медина';
        break;
      case QuranLanguage.uzbekLatin:
        name = surah.nameUzLat;
        meaning = surah.nameUzLatMeaning;
        revelationCity =
            surah.revelationType == RevelationType.meccan ? 'Makka' : 'Madina';
        break;
      case QuranLanguage.uzbekCyrillic:
        name = surah.nameUzCyr;
        meaning = surah.nameUzCyrMeaning;
        revelationCity =
            surah.revelationType == RevelationType.meccan ? 'Макка' : 'Мадина';
        break;
    }
    return LocalizedSurahModel(
      number: surah.number,
      nameArabic: surah.nameAr,
      name: name,
      meaning: meaning,
      versesCount: surah.versesCount,
      pageStart: surah.pageStart,
      revelationType: surah.revelationType,
      revelationCity: revelationCity,
    );
  }

  LocalizedAyahModel _localizeAyah(AyahModel ayah, QuranLanguage language) {
    String text;
    switch (language) {
      case QuranLanguage.english:
        text = ayah.textEn;
        break;
      case QuranLanguage.russian:
        text = ayah.textRu;
        break;
      case QuranLanguage.uzbekLatin:
        text = ayah.textUzLat;
        break;
      case QuranLanguage.uzbekCyrillic:
        text = ayah.textUzCyr;
        break;
    }
    return LocalizedAyahModel(
      id: ayah.id,
      surahNumber: ayah.surahId,
      ayahNumber: ayah.ayahNumber,
      text: text,
    );
  }

  LocalizedJuzModel _localizeJuz(JuzModel juz) {
    return LocalizedJuzModel(
      number: juz.number,
      nameArabic: juz.nameAr,
      name: juz.nameEn,
      startSurahNumber: juz.startSurahNumber,
      startAyahNumber: juz.startAyahNumber,
      endSurahNumber: juz.endSurahNumber,
      endAyahNumber: juz.endAyahNumber,
      pageStart: juz.pageStart,
    );
  }

  // ============ Private Helper Methods ============

  Future<List<SurahModel>> _getAllSurahsInternal() async {
    if (_cache.hasSurahs) {
      return _cache.surahs!;
    }

    final data = await _database.getAllSurahs();
    final surahs = data.map(_surahDataToModel).toList();
    _cache.cacheSurahs(surahs);
    return surahs;
  }

  Future<List<JuzModel>> _getAllJuzInternal() async {
    if (_cache.hasJuzList) {
      return _cache.juzList!;
    }

    final data = await _database.getAllJuz();
    final juzList = data.map(_juzDataToModel).toList();
    _cache.cacheJuzList(juzList);
    return juzList;
  }

  Future<List<AyahModel>> _getAyahsBySurahInternal(int surahNumber) async {
    if (_cache.hasAyahsForSurah(surahNumber)) {
      return _cache.getAyahsBySurah(surahNumber)!;
    }

    final data = await _database.getAyahsBySurah(surahNumber);
    final ayahs = data.map(_ayahDataToModel).toList();
    _cache.cacheAyahsBySurah(surahNumber, ayahs);
    return ayahs;
  }

  String _getTextForLanguage(Ayah ayah, QuranLanguage language) {
    switch (language) {
      case QuranLanguage.english:
        return ayah.textEn;
      case QuranLanguage.russian:
        return ayah.textRu;
      case QuranLanguage.uzbekLatin:
        return ayah.textUzLat;
      case QuranLanguage.uzbekCyrillic:
        return ayah.textUzCyr;
    }
  }

  String _getNameForLanguage(SurahData surah, QuranLanguage language) {
    switch (language) {
      case QuranLanguage.english:
        return surah.nameEn;
      case QuranLanguage.russian:
        return surah.nameRu;
      case QuranLanguage.uzbekLatin:
        return surah.nameUzLat;
      case QuranLanguage.uzbekCyrillic:
        return surah.nameUzCyr;
    }
  }

  SearchResultModel _createSearchResult({
    required SearchResultType type,
    required int surahNumber,
    int? ayahNumber,
    required String fullText,
    required String query,
  }) {
    final lowerFullText = fullText.toLowerCase();
    final lowerQuery = query.toLowerCase();
    final matchStartIndex = lowerFullText.indexOf(lowerQuery);

    if (matchStartIndex == -1) {
      // Should not happen, but handle gracefully
      return SearchResultModel(
        type: type,
        surahNumber: surahNumber,
        ayahNumber: ayahNumber,
        matchedText: query,
        fullText: fullText,
        matchStartIndex: 0,
        matchEndIndex: query.length,
        contextBefore: '',
        contextAfter: '',
      );
    }

    final matchEndIndex = matchStartIndex + query.length;
    final matchedText = fullText.substring(matchStartIndex, matchEndIndex);

    // Get context (up to 50 characters before and after)
    const contextLength = 50;
    final contextStart = max(0, matchStartIndex - contextLength);
    final contextEnd = min(fullText.length, matchEndIndex + contextLength);

    var contextBefore = fullText.substring(contextStart, matchStartIndex);
    var contextAfter = fullText.substring(matchEndIndex, contextEnd);

    // Add ellipsis if truncated
    if (contextStart > 0) {
      contextBefore = '...$contextBefore';
    }
    if (contextEnd < fullText.length) {
      contextAfter = '$contextAfter...';
    }

    return SearchResultModel(
      type: type,
      surahNumber: surahNumber,
      ayahNumber: ayahNumber,
      matchedText: matchedText,
      fullText: fullText,
      matchStartIndex: matchStartIndex,
      matchEndIndex: matchEndIndex,
      contextBefore: contextBefore,
      contextAfter: contextAfter,
    );
  }

  // ============ Surah Methods ============

  @override
  Future<List<LocalizedSurahModel>> getAllSurahs(QuranLanguage language) async {
    final surahs = await _getAllSurahsInternal();
    return surahs.map((s) => _localizeSurah(s, language)).toList();
  }

  @override
  Future<LocalizedSurahModel> getSurahByNumber(
    int surahNumber,
    QuranLanguage language,
  ) async {
    final surahs = await _getAllSurahsInternal();
    final surah = surahs.where((s) => s.number == surahNumber).firstOrNull;

    if (surah == null) {
      throw SurahNotFoundException(surahNumber);
    }

    return _localizeSurah(surah, language);
  }

  @override
  Future<List<LocalizedSurahModel>> getSurahsByJuz(
    int juzNumber,
    QuranLanguage language,
  ) async {
    final juzList = await _getAllJuzInternal();
    final juz = juzList.where((j) => j.number == juzNumber).firstOrNull;

    if (juz == null) {
      throw JuzNotFoundException(juzNumber);
    }

    final surahs = await _getAllSurahsInternal();
    final surahsInJuz = surahs
        .where((s) =>
            s.number >= juz.startSurahNumber && s.number <= juz.endSurahNumber)
        .map((s) => _localizeSurah(s, language))
        .toList();

    return surahsInJuz;
  }

  // ============ Ayah Methods ============

  @override
  Future<List<LocalizedAyahModel>> getAyahsBySurah(
    int surahNumber,
    QuranLanguage language,
  ) async {
    // First verify surah exists
    final surahs = await _getAllSurahsInternal();
    final surahExists = surahs.any((s) => s.number == surahNumber);
    if (!surahExists) {
      throw SurahNotFoundException(surahNumber);
    }

    final ayahs = await _getAyahsBySurahInternal(surahNumber);
    return ayahs.map((a) => _localizeAyah(a, language)).toList();
  }

  @override
  Future<LocalizedAyahModel> getAyahByLocation(
    int surahNumber,
    int ayahNumber,
    QuranLanguage language,
  ) async {
    final ayahs = await _getAyahsBySurahInternal(surahNumber);
    final ayah = ayahs.where((a) => a.ayahNumber == ayahNumber).firstOrNull;

    if (ayah == null) {
      throw AyahNotFoundException(surahNumber, ayahNumber);
    }

    return _localizeAyah(ayah, language);
  }

  // ============ Juz Methods ============

  @override
  Future<List<LocalizedJuzModel>> getAllJuz() async {
    final juzList = await _getAllJuzInternal();
    return juzList.map(_localizeJuz).toList();
  }

  @override
  Future<LocalizedJuzModel> getJuzByNumber(int juzNumber) async {
    final juzList = await _getAllJuzInternal();
    final juz = juzList.where((j) => j.number == juzNumber).firstOrNull;

    if (juz == null) {
      throw JuzNotFoundException(juzNumber);
    }

    return _localizeJuz(juz);
  }

  // ============ Page Methods ============

  @override
  Future<QuranPageModel> getPageByNumber(
    int pageNumber,
    QuranLanguage language,
  ) async {
    final linesData = await _database.getLinesByPage(pageNumber);

    if (linesData.isEmpty) {
      throw PageNotFoundException(pageNumber);
    }

    // Build line + word structure
    final lines = <QuranPageLineModel>[];
    for (final lineData in linesData) {
      final line = _lineDataToModel(lineData);
      final wordsData = await _database.getWordsByLine(lineData.id);
      final words = wordsData.map(_wordDataToModel).toList();
      lines.add(QuranPageLineModel(line: line, words: words));
    }

    // Preload surah and juz metadata
    final allSurahs = await _getAllSurahsInternal();
    final surahByNumber = {
      for (final s in allSurahs) s.number: s,
    };
    final allJuz = await _getAllJuzInternal();

    // Track ayah ranges on this page per surah
    final minAyahBySurah = <int, int>{};
    final maxAyahBySurah = <int, int>{};

    for (final line in linesData) {
      _updatePageAyahRangeForLine(
        line.verseRange,
        surahByNumber,
        minAyahBySurah,
        maxAyahBySurah,
      );
    }

    // Build localized surah list for this page (ascending by surah number)
    final localizedSurahs = <LocalizedSurahModel>[];
    final surahNumbersOnPage = minAyahBySurah.keys.toList()..sort();
    for (final surahNumber in surahNumbersOnPage) {
      final surah = surahByNumber[surahNumber];
      if (surah != null) {
        localizedSurahs.add(_localizeSurah(surah, language));
      }
    }

    // Build localized juz list for this page (ascending by juz number)
    final localizedJuzList = <LocalizedJuzModel>[];
    for (final juz in allJuz) {
      if (_pageIntersectsJuz(juz, minAyahBySurah, maxAyahBySurah)) {
        localizedJuzList.add(_localizeJuz(juz));
      }
    }
    localizedJuzList.sort((a, b) => a.number.compareTo(b.number));

    // Build localized ayah list for this page (ascending by surah, then ayah)
    final localizedAyahs = <LocalizedAyahModel>[];
    for (final surahNumber in surahNumbersOnPage) {
      final minAyah = minAyahBySurah[surahNumber]!;
      final maxAyah = maxAyahBySurah[surahNumber]!;

      final ayahsInSurah =
          List<AyahModel>.from(await _getAyahsBySurahInternal(surahNumber));
      ayahsInSurah.sort(
        (a, b) => a.ayahNumber.compareTo(b.ayahNumber),
      );

      for (final ayah in ayahsInSurah) {
        if (ayah.ayahNumber < minAyah || ayah.ayahNumber > maxAyah) {
          continue;
        }
        localizedAyahs.add(_localizeAyah(ayah, language));
      }
    }

    return QuranPageModel(
      pageNumber: pageNumber,
      lines: lines,
      surahs: localizedSurahs,
      juzList: localizedJuzList,
      ayahs: localizedAyahs,
    );
  }

  // ============ Search Methods ============

  @override
  Future<PaginatedResultModel<SearchResultModel>> search(
    String query,
    QuranLanguage language, {
    int page = 1,
    int pageSize = 50,
  }) async {
    if (page < 1) {
      throw InvalidPageException(page);
    }

    // Get surah results (not paginated, usually small)
    final surahResults = await searchSurahs(query, language);

    // Get ayah results (paginated)
    final ayahPaginatedResults = await searchAyahs(
      query,
      language,
      page: page,
      pageSize: pageSize,
    );

    // Combine results (surahs first, then ayahs)
    final allItems = <SearchResultModel>[];

    // Add surah results only on the first page
    if (page == 1) {
      allItems.addAll(surahResults);
    }

    allItems.addAll(ayahPaginatedResults.items);

    final totalSurahResults = surahResults.length;
    final totalItems = totalSurahResults + ayahPaginatedResults.totalItems;
    final totalPages = ((totalItems - totalSurahResults) / pageSize).ceil();

    return PaginatedResultModel(
      items: allItems,
      currentPage: page,
      totalPages: totalPages > 0 ? totalPages : 1,
      totalItems: totalItems,
      pageSize: pageSize,
      hasNextPage: ayahPaginatedResults.hasNextPage,
      hasPreviousPage: page > 1,
    );
  }

  @override
  Future<PaginatedResultModel<SearchResultModel>> searchAyahs(
    String query,
    QuranLanguage language, {
    int page = 1,
    int pageSize = 50,
  }) async {
    if (page < 1) {
      throw InvalidPageException(page);
    }

    final offset = (page - 1) * pageSize;

    // Get search results
    List<Ayah> ayahsData;
    int totalCount;

    switch (language) {
      case QuranLanguage.english:
        ayahsData = await _database.searchAyahsEn(query, pageSize, offset);
        totalCount = await _database.countSearchAyahsEn(query);
        break;
      case QuranLanguage.russian:
        ayahsData = await _database.searchAyahsRu(query, pageSize, offset);
        totalCount = await _database.countSearchAyahsRu(query);
        break;
      case QuranLanguage.uzbekLatin:
        ayahsData = await _database.searchAyahsUzLat(query, pageSize, offset);
        totalCount = await _database.countSearchAyahsUzLat(query);
        break;
      case QuranLanguage.uzbekCyrillic:
        ayahsData = await _database.searchAyahsUzCyr(query, pageSize, offset);
        totalCount = await _database.countSearchAyahsUzCyr(query);
        break;
    }

    final results = ayahsData.map((ayah) {
      final fullText = _getTextForLanguage(ayah, language);
      return _createSearchResult(
        type: SearchResultType.ayah,
        surahNumber: ayah.surahId,
        ayahNumber: ayah.ayahNumber,
        fullText: fullText,
        query: query,
      );
    }).toList();

    final totalPages = (totalCount / pageSize).ceil();

    return PaginatedResultModel(
      items: results,
      currentPage: page,
      totalPages: totalPages > 0 ? totalPages : 1,
      totalItems: totalCount,
      pageSize: pageSize,
      hasNextPage: page < totalPages,
      hasPreviousPage: page > 1,
    );
  }

  @override
  Future<List<SearchResultModel>> searchSurahs(
    String query,
    QuranLanguage language,
  ) async {
    List<SurahData> surahsData;

    switch (language) {
      case QuranLanguage.english:
        surahsData = await _database.searchSurahsEn(query);
        break;
      case QuranLanguage.russian:
        surahsData = await _database.searchSurahsRu(query);
        break;
      case QuranLanguage.uzbekLatin:
        surahsData = await _database.searchSurahsUzLat(query);
        break;
      case QuranLanguage.uzbekCyrillic:
        surahsData = await _database.searchSurahsUzCyr(query);
        break;
    }

    return surahsData.map((surah) {
      final fullText = _getNameForLanguage(surah, language);
      return _createSearchResult(
        type: SearchResultType.surah,
        surahNumber: surah.number,
        fullText: fullText,
        query: query,
      );
    }).toList();
  }

  // ============ Additional Ayah Methods ============

  @override
  Future<List<LocalizedAyahModel>> getAyahsByJuz(
    int juzNumber,
    QuranLanguage language,
  ) async {
    final juzList = await _getAllJuzInternal();
    final juz = juzList.where((j) => j.number == juzNumber).firstOrNull;

    if (juz == null) {
      throw JuzNotFoundException(juzNumber);
    }

    final result = <LocalizedAyahModel>[];

    // Iterate through all surahs in this juz
    for (int surahNum = juz.startSurahNumber;
        surahNum <= juz.endSurahNumber;
        surahNum++) {
      final ayahs = await _getAyahsBySurahInternal(surahNum);

      for (final ayah in ayahs) {
        // Determine if this ayah is within the juz range
        bool inRange = false;

        if (surahNum == juz.startSurahNumber &&
            surahNum == juz.endSurahNumber) {
          // Juz starts and ends in the same surah
          inRange = ayah.ayahNumber >= juz.startAyahNumber &&
              ayah.ayahNumber <= juz.endAyahNumber;
        } else if (surahNum == juz.startSurahNumber) {
          // First surah of juz
          inRange = ayah.ayahNumber >= juz.startAyahNumber;
        } else if (surahNum == juz.endSurahNumber) {
          // Last surah of juz
          inRange = ayah.ayahNumber <= juz.endAyahNumber;
        } else {
          // Middle surah - include all ayahs
          inRange = true;
        }

        if (inRange) {
          result.add(_localizeAyah(ayah, language));
        }
      }
    }

    return result;
  }

  @override
  Future<LocalizedAyahModel?> getNextAyah(
    int surahNumber,
    int ayahNumber,
    QuranLanguage language,
  ) async {
    final surahs = await _getAllSurahsInternal();
    final currentSurah =
        surahs.where((s) => s.number == surahNumber).firstOrNull;

    if (currentSurah == null) {
      return null;
    }

    // Try to get next ayah in the same surah
    if (ayahNumber < currentSurah.versesCount) {
      final ayahs = await _getAyahsBySurahInternal(surahNumber);
      final nextAyah =
          ayahs.where((a) => a.ayahNumber == ayahNumber + 1).firstOrNull;
      if (nextAyah != null) {
        return _localizeAyah(nextAyah, language);
      }
    }

    // Move to next surah
    if (surahNumber < 114) {
      final nextSurahAyahs = await _getAyahsBySurahInternal(surahNumber + 1);
      final firstAyah =
          nextSurahAyahs.where((a) => a.ayahNumber == 1).firstOrNull;
      if (firstAyah != null) {
        return _localizeAyah(firstAyah, language);
      }
    }

    // End of Quran
    return null;
  }

  @override
  Future<LocalizedAyahModel?> getPreviousAyah(
    int surahNumber,
    int ayahNumber,
    QuranLanguage language,
  ) async {
    // Try to get previous ayah in the same surah
    if (ayahNumber > 1) {
      final ayahs = await _getAyahsBySurahInternal(surahNumber);
      final prevAyah =
          ayahs.where((a) => a.ayahNumber == ayahNumber - 1).firstOrNull;
      if (prevAyah != null) {
        return _localizeAyah(prevAyah, language);
      }
    }

    // Move to previous surah
    if (surahNumber > 1) {
      final surahs = await _getAllSurahsInternal();
      final prevSurah =
          surahs.where((s) => s.number == surahNumber - 1).firstOrNull;
      if (prevSurah != null) {
        final prevSurahAyahs = await _getAyahsBySurahInternal(surahNumber - 1);
        final lastAyah = prevSurahAyahs
            .where((a) => a.ayahNumber == prevSurah.versesCount)
            .firstOrNull;
        if (lastAyah != null) {
          return _localizeAyah(lastAyah, language);
        }
      }
    }

    // Beginning of Quran
    return null;
  }

  @override
  Future<List<LocalizedAyahModel>> getAyahsInRange({
    required int startSurahNumber,
    required int startAyahNumber,
    required int endSurahNumber,
    required int endAyahNumber,
    required QuranLanguage language,
  }) async {
    // Validate start position exists
    final startAyahs = await _getAyahsBySurahInternal(startSurahNumber);
    final startExists = startAyahs.any((a) => a.ayahNumber == startAyahNumber);
    if (!startExists) {
      throw AyahNotFoundException(startSurahNumber, startAyahNumber);
    }

    // Validate end position exists
    final endAyahs = await _getAyahsBySurahInternal(endSurahNumber);
    final endExists = endAyahs.any((a) => a.ayahNumber == endAyahNumber);
    if (!endExists) {
      throw AyahNotFoundException(endSurahNumber, endAyahNumber);
    }

    final result = <LocalizedAyahModel>[];

    for (int surahNum = startSurahNumber;
        surahNum <= endSurahNumber;
        surahNum++) {
      final ayahs = await _getAyahsBySurahInternal(surahNum);

      for (final ayah in ayahs) {
        bool inRange = false;

        if (startSurahNumber == endSurahNumber) {
          // Same surah
          inRange = ayah.ayahNumber >= startAyahNumber &&
              ayah.ayahNumber <= endAyahNumber;
        } else if (surahNum == startSurahNumber) {
          // First surah
          inRange = ayah.ayahNumber >= startAyahNumber;
        } else if (surahNum == endSurahNumber) {
          // Last surah
          inRange = ayah.ayahNumber <= endAyahNumber;
        } else {
          // Middle surah - include all
          inRange = true;
        }

        if (inRange) {
          result.add(_localizeAyah(ayah, language));
        }
      }
    }

    return result;
  }

  @override
  Future<LocalizedAyahModel> getRandomAyah(QuranLanguage language) async {
    final random = Random();
    final surahs = await _getAllSurahsInternal();

    // Pick a random surah
    final randomSurah = surahs[random.nextInt(surahs.length)];

    // Pick a random ayah from that surah
    final ayahs = await _getAyahsBySurahInternal(randomSurah.number);
    final randomAyah = ayahs[random.nextInt(ayahs.length)];

    return _localizeAyah(randomAyah, language);
  }

  // ============ Additional Juz Methods ============

  @override
  Future<LocalizedJuzModel> getJuzByAyahLocation(
    int surahNumber,
    int ayahNumber,
  ) async {
    // Validate ayah exists
    final surahs = await _getAllSurahsInternal();
    final surah = surahs.where((s) => s.number == surahNumber).firstOrNull;

    if (surah == null || ayahNumber < 1 || ayahNumber > surah.versesCount) {
      throw AyahNotFoundException(surahNumber, ayahNumber);
    }

    final juzList = await _getAllJuzInternal();

    for (final juz in juzList) {
      bool inJuz = false;

      if (surahNumber > juz.startSurahNumber &&
          surahNumber < juz.endSurahNumber) {
        // Surah is completely within this juz
        inJuz = true;
      } else if (surahNumber == juz.startSurahNumber &&
          surahNumber == juz.endSurahNumber) {
        // Juz starts and ends in the same surah
        inJuz = ayahNumber >= juz.startAyahNumber &&
            ayahNumber <= juz.endAyahNumber;
      } else if (surahNumber == juz.startSurahNumber) {
        // Surah is the start of this juz
        inJuz = ayahNumber >= juz.startAyahNumber;
      } else if (surahNumber == juz.endSurahNumber) {
        // Surah is the end of this juz
        inJuz = ayahNumber <= juz.endAyahNumber;
      }

      if (inJuz) {
        return _localizeJuz(juz);
      }
    }

    // Should not reach here if data is correct
    throw AyahNotFoundException(surahNumber, ayahNumber);
  }

  // ============ Additional Page Methods ============

  @override
  Future<int> getPageNumberByAyahLocation(
    int surahNumber,
    int ayahNumber,
  ) async {
    // First validate the ayah exists
    final ayahs = await _getAyahsBySurahInternal(surahNumber);
    final ayahExists = ayahs.any((a) => a.ayahNumber == ayahNumber);
    if (!ayahExists) {
      throw AyahNotFoundException(surahNumber, ayahNumber);
    }

    // Get surah to find starting page
    final surahs = await _getAllSurahsInternal();
    final surah = surahs.where((s) => s.number == surahNumber).firstOrNull;

    if (surah == null) {
      throw SurahNotFoundException(surahNumber);
    }

    // Search through pages starting from surah's start page
    // to find the page containing this ayah
    for (int pageNum = surah.pageStart; pageNum <= 604; pageNum++) {
      final linesData = await _database.getLinesByPage(pageNum);

      for (final line in linesData) {
        // Check if the verse_range contains our ayah
        // verse_range format is like "2:255" or "2:255-2:256" or "1:1-1:7"
        if (_verseRangeContainsAyah(line.verseRange, surahNumber, ayahNumber)) {
          return pageNum;
        }
      }
    }

    // Fallback to surah start page if not found in lines
    return surah.pageStart;
  }

  /// Checks if a verse range string contains a specific ayah.
  bool _verseRangeContainsAyah(
    String verseRange,
    int surahNumber,
    int ayahNumber,
  ) {
    // Handle empty or invalid verse range
    if (verseRange.isEmpty) return false;

    // Parse verse range - format: "surah:ayah" or "surah:startAyah-surah:endAyah"
    final parts = verseRange.split('-');

    if (parts.length == 1) {
      // Single verse like "2:255"
      final location = _parseVerseLocation(parts[0]);
      if (location == null) return false;
      return location.$1 == surahNumber && location.$2 == ayahNumber;
    } else if (parts.length == 2) {
      // Range like "2:255-2:256" or "1:1-2:5"
      final start = _parseVerseLocation(parts[0]);
      final end = _parseVerseLocation(parts[1]);
      if (start == null || end == null) return false;

      // Check if our ayah falls within the range
      if (surahNumber < start.$1 || surahNumber > end.$1) return false;

      if (surahNumber == start.$1 && surahNumber == end.$1) {
        // Same surah for start and end
        return ayahNumber >= start.$2 && ayahNumber <= end.$2;
      } else if (surahNumber == start.$1) {
        return ayahNumber >= start.$2;
      } else if (surahNumber == end.$1) {
        return ayahNumber <= end.$2;
      } else {
        // Surah is between start and end surahs
        return true;
      }
    }

    return false;
  }

  /// Updates the per-surah ayah range maps for a given line's verse range.
  ///
  /// The [verseRange] string has formats like:
  /// - "2:255"
  /// - "2:255-2:256"
  /// - "1:1-2:5"
  void _updatePageAyahRangeForLine(
    String verseRange,
    Map<int, SurahModel> surahByNumber,
    Map<int, int> minAyahBySurah,
    Map<int, int> maxAyahBySurah,
  ) {
    if (verseRange.isEmpty) return;

    final parts = verseRange.split('-');

    if (parts.length == 1) {
      final location = _parseVerseLocation(parts[0]);
      if (location == null) return;
      _addAyahRangeToSurah(
        location.$1,
        location.$2,
        location.$2,
        minAyahBySurah,
        maxAyahBySurah,
        surahByNumber,
      );
    } else if (parts.length == 2) {
      final start = _parseVerseLocation(parts[0]);
      final end = _parseVerseLocation(parts[1]);
      if (start == null || end == null) return;

      final startSurah = start.$1;
      final startAyah = start.$2;
      final endSurah = end.$1;
      final endAyah = end.$2;

      if (startSurah == endSurah) {
        _addAyahRangeToSurah(
          startSurah,
          startAyah,
          endAyah,
          minAyahBySurah,
          maxAyahBySurah,
          surahByNumber,
        );
      } else {
        final fromSurah = startSurah < endSurah ? startSurah : endSurah;
        final toSurah = startSurah < endSurah ? endSurah : startSurah;

        for (int surahNumber = fromSurah;
            surahNumber <= toSurah;
            surahNumber++) {
          final surah = surahByNumber[surahNumber];
          if (surah == null) continue;

          int minAyah;
          int maxAyah;

          if (surahNumber == startSurah) {
            minAyah = startAyah;
            maxAyah = surah.versesCount;
          } else if (surahNumber == endSurah) {
            minAyah = 1;
            maxAyah = endAyah;
          } else {
            minAyah = 1;
            maxAyah = surah.versesCount;
          }

          _addAyahRangeToSurah(
            surahNumber,
            minAyah,
            maxAyah,
            minAyahBySurah,
            maxAyahBySurah,
            surahByNumber,
          );
        }
      }
    }
  }

  void _addAyahRangeToSurah(
    int surahNumber,
    int startAyah,
    int endAyah,
    Map<int, int> minAyahBySurah,
    Map<int, int> maxAyahBySurah,
    Map<int, SurahModel> surahByNumber,
  ) {
    if (startAyah > endAyah) {
      final temp = startAyah;
      startAyah = endAyah;
      endAyah = temp;
    }

    final surah = surahByNumber[surahNumber];
    if (surah != null) {
      if (startAyah < 1) startAyah = 1;
      if (endAyah > surah.versesCount) endAyah = surah.versesCount;
    }

    final currentMin = minAyahBySurah[surahNumber];
    final currentMax = maxAyahBySurah[surahNumber];

    if (currentMin == null || startAyah < currentMin) {
      minAyahBySurah[surahNumber] = startAyah;
    }
    if (currentMax == null || endAyah > currentMax) {
      maxAyahBySurah[surahNumber] = endAyah;
    }
  }

  int _compareVersePosition(
    int surahA,
    int ayahA,
    int surahB,
    int ayahB,
  ) {
    if (surahA != surahB) {
      return surahA.compareTo(surahB);
    }
    return ayahA.compareTo(ayahB);
  }

  bool _intervalsOverlap(
    int startSurahA,
    int startAyahA,
    int endSurahA,
    int endAyahA,
    int startSurahB,
    int startAyahB,
    int endSurahB,
    int endAyahB,
  ) {
    final aStartVsBEnd =
        _compareVersePosition(startSurahA, startAyahA, endSurahB, endAyahB);
    final bStartVsAEnd =
        _compareVersePosition(startSurahB, startAyahB, endSurahA, endAyahA);

    return aStartVsBEnd <= 0 && bStartVsAEnd <= 0;
  }

  bool _pageIntersectsJuz(
    JuzModel juz,
    Map<int, int> minAyahBySurah,
    Map<int, int> maxAyahBySurah,
  ) {
    for (final entry in minAyahBySurah.entries) {
      final surahNumber = entry.key;
      final minAyah = entry.value;
      final maxAyah = maxAyahBySurah[surahNumber]!;

      if (_intervalsOverlap(
        juz.startSurahNumber,
        juz.startAyahNumber,
        juz.endSurahNumber,
        juz.endAyahNumber,
        surahNumber,
        minAyah,
        surahNumber,
        maxAyah,
      )) {
        return true;
      }
    }
    return false;
  }

  /// Parses a verse location string like "2:255" into (surah, ayah).
  (int, int)? _parseVerseLocation(String location) {
    final parts = location.trim().split(':');
    if (parts.length != 2) return null;

    final surah = int.tryParse(parts[0]);
    final ayah = int.tryParse(parts[1]);

    if (surah == null || ayah == null) return null;
    return (surah, ayah);
  }
}
