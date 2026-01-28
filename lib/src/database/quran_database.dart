import 'dart:io';

import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:flutter/services.dart';
import 'package:path/path.dart' as p;
import 'package:path_provider/path_provider.dart';

part 'quran_database.g.dart';

/// Drift table for surah.
class Surah extends Table {
  IntColumn get number => integer()();
  TextColumn get nameAr => text().named('name_ar')();
  TextColumn get nameEn => text().named('name_en')();
  TextColumn get nameRu => text().named('name_ru')();
  TextColumn get nameUzLat => text().named('name_uz_lat')();
  TextColumn get nameUzCyr => text().named('name_uz_cyr')();
  TextColumn get nameEnMeaning => text().named('name_en_meaning')();
  TextColumn get nameRuMeaning => text().named('name_ru_meaning')();
  TextColumn get nameUzLatMeaning => text().named('name_uz_lat_meaning')();
  TextColumn get nameUzCyrMeaning => text().named('name_uz_cyr_meaning')();
  IntColumn get versesCount => integer().named('verses_count')();
  IntColumn get pageStart => integer().named('page_start')();
  TextColumn get revelationType => text().named('revelation_type')();

  @override
  Set<Column> get primaryKey => {number};
}

/// Drift table for ayahs.
class Ayahs extends Table {
  IntColumn get id => integer().autoIncrement()();
  IntColumn get surahId => integer().named('surah_id')();
  IntColumn get ayahNumber => integer().named('ayah_number')();
  TextColumn get textEn => text().named('text_en')();
  TextColumn get textRu => text().named('text_ru')();
  TextColumn get textUzLat => text().named('text_uz_lat')();
  TextColumn get textUzCyr => text().named('text_uz_cyr')();
}

/// Drift table for juz.
class Juz extends Table {
  IntColumn get number => integer()();
  TextColumn get nameAr => text().named('name_ar')();
  TextColumn get nameEn => text().named('name_en')();
  IntColumn get startSurahNumber => integer().named('start_surah_number')();
  IntColumn get pageStart => integer().named('page_start')();
  IntColumn get startAyahNumber => integer().named('start_ayah_number')();
  IntColumn get endSurahNumber => integer().named('end_surah_number')();
  IntColumn get endAyahNumber => integer().named('end_ayah_number')();

  @override
  Set<Column> get primaryKey => {number};
}

/// Drift table for quran_line.
class QuranLine extends Table {
  IntColumn get id => integer().autoIncrement()();
  IntColumn get pageNumber => integer().named('page_number')();
  TextColumn get type => text()();
  TextColumn get verseRange => text().named('verse_range')();
}

/// Drift table for quran_line_word.
class QuranLineWord extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get location => text()();
  TextColumn get word => text()();
  TextColumn get qocV1 => text().named('qoc_v1')();
  TextColumn get qocV2 => text().named('qoc_v2')();
  IntColumn get lineId => integer().named('line_id')();
}

/// Drift table for surah_juz.
class SurahJuz extends Table {
  IntColumn get surahNumber => integer().named('surah_number')();
  IntColumn get juzNumber => integer().named('juz_number')();
  IntColumn get startAyah => integer().named('start_ayah').nullable()();
  IntColumn get endAyah => integer().named('end_ayah').nullable()();

  @override
  Set<Column> get primaryKey => {surahNumber, juzNumber};
}

@DriftDatabase(tables: [Surah, Ayahs, Juz, QuranLine, QuranLineWord, SurahJuz])
class QuranDatabase extends _$QuranDatabase {
  QuranDatabase._(QueryExecutor e) : super(e);

  /// Private constructor for creating from file path.
  factory QuranDatabase.fromPath(String path) {
    return QuranDatabase._(NativeDatabase.createInBackground(File(path)));
  }

  /// Creates database from a lazy opener.
  factory QuranDatabase.lazy(LazyDatabase lazyDatabase) {
    return QuranDatabase._(lazyDatabase);
  }

  @override
  int get schemaVersion => 1;

  // ============ Surah Queries ============

  /// Gets all surahs.
  Future<List<SurahData>> getAllSurahs() => select(surah).get();

  /// Gets a surah by number.
  Future<SurahData?> getSurahByNumber(int number) =>
      (select(surah)..where((s) => s.number.equals(number))).getSingleOrNull();

  // ============ Ayah Queries ============

  /// Gets all ayahs for a surah.
  Future<List<Ayah>> getAyahsBySurah(int surahId) =>
      (select(ayahs)..where((a) => a.surahId.equals(surahId))).get();

  /// Gets a specific ayah by surah and ayah number.
  Future<Ayah?> getAyahByLocation(int surahId, int ayahNumber) => (select(ayahs)
        ..where(
            (a) => a.surahId.equals(surahId) & a.ayahNumber.equals(ayahNumber)))
      .getSingleOrNull();

  /// Searches ayahs in English.
  Future<List<Ayah>> searchAyahsEn(String query, int limit, int offset) =>
      (select(ayahs)
            ..where((a) => a.textEn.like('%$query%'))
            ..limit(limit, offset: offset))
          .get();

  /// Searches ayahs in Russian.
  Future<List<Ayah>> searchAyahsRu(String query, int limit, int offset) =>
      (select(ayahs)
            ..where((a) => a.textRu.like('%$query%'))
            ..limit(limit, offset: offset))
          .get();

  /// Searches ayahs in Uzbek Latin.
  Future<List<Ayah>> searchAyahsUzLat(String query, int limit, int offset) =>
      (select(ayahs)
            ..where((a) => a.textUzLat.like('%$query%'))
            ..limit(limit, offset: offset))
          .get();

  /// Searches ayahs in Uzbek Cyrillic.
  Future<List<Ayah>> searchAyahsUzCyr(String query, int limit, int offset) =>
      (select(ayahs)
            ..where((a) => a.textUzCyr.like('%$query%'))
            ..limit(limit, offset: offset))
          .get();

  /// Counts total ayah search results in English.
  Future<int> countSearchAyahsEn(String query) async {
    final count = ayahs.id.count();
    final q = selectOnly(ayahs)
      ..addColumns([count])
      ..where(ayahs.textEn.like('%$query%'));
    final result = await q.getSingle();
    return result.read(count) ?? 0;
  }

  /// Counts total ayah search results in Russian.
  Future<int> countSearchAyahsRu(String query) async {
    final count = ayahs.id.count();
    final q = selectOnly(ayahs)
      ..addColumns([count])
      ..where(ayahs.textRu.like('%$query%'));
    final result = await q.getSingle();
    return result.read(count) ?? 0;
  }

  /// Counts total ayah search results in Uzbek Latin.
  Future<int> countSearchAyahsUzLat(String query) async {
    final count = ayahs.id.count();
    final q = selectOnly(ayahs)
      ..addColumns([count])
      ..where(ayahs.textUzLat.like('%$query%'));
    final result = await q.getSingle();
    return result.read(count) ?? 0;
  }

  /// Counts total ayah search results in Uzbek Cyrillic.
  Future<int> countSearchAyahsUzCyr(String query) async {
    final count = ayahs.id.count();
    final q = selectOnly(ayahs)
      ..addColumns([count])
      ..where(ayahs.textUzCyr.like('%$query%'));
    final result = await q.getSingle();
    return result.read(count) ?? 0;
  }

  // ============ Juz Queries ============

  /// Gets all juz.
  Future<List<JuzData>> getAllJuz() => select(juz).get();

  /// Gets a juz by number.
  Future<JuzData?> getJuzByNumber(int number) =>
      (select(juz)..where((j) => j.number.equals(number))).getSingleOrNull();

  // ============ QuranLine Queries ============

  /// Gets all lines for a page.
  Future<List<QuranLineData>> getLinesByPage(int pageNumber) =>
      (select(quranLine)..where((l) => l.pageNumber.equals(pageNumber))).get();

  /// Gets all words for a line.
  Future<List<QuranLineWordData>> getWordsByLine(int lineId) =>
      (select(quranLineWord)..where((w) => w.lineId.equals(lineId))).get();

  /// Gets all words for a page (by joining with lines).
  Future<List<QuranLineWordData>> getWordsByPage(int pageNumber) async {
    final lines = await getLinesByPage(pageNumber);
    final lineIds = lines.map((l) => l.id).toList();
    if (lineIds.isEmpty) return [];
    return (select(quranLineWord)..where((w) => w.lineId.isIn(lineIds))).get();
  }

  // ============ Search Surah Queries ============

  /// Searches surahs by name in English.
  Future<List<SurahData>> searchSurahsEn(String query) =>
      (select(surah)..where((s) => s.nameEn.like('%$query%'))).get();

  /// Searches surahs by name in Russian.
  Future<List<SurahData>> searchSurahsRu(String query) =>
      (select(surah)..where((s) => s.nameRu.like('%$query%'))).get();

  /// Searches surahs by name in Uzbek Latin.
  Future<List<SurahData>> searchSurahsUzLat(String query) =>
      (select(surah)..where((s) => s.nameUzLat.like('%$query%'))).get();

  /// Searches surahs by name in Uzbek Cyrillic.
  Future<List<SurahData>> searchSurahsUzCyr(String query) =>
      (select(surah)..where((s) => s.nameUzCyr.like('%$query%'))).get();
}

/// Opens the Quran database from assets or custom path.
Future<QuranDatabase> openQuranDatabase({String? customPath}) async {
  if (customPath != null) {
    return QuranDatabase.fromPath(customPath);
  }

  final dbFolder = await getApplicationDocumentsDirectory();
  final file = File(p.join(dbFolder.path, 'quran_db.sqlite'));

  if (!await file.exists()) {
    // Copy from assets
    final data =
        await rootBundle.load('packages/quran_db/assets/quran_db.sqlite');
    final bytes = data.buffer.asUint8List();
    await file.writeAsBytes(bytes, flush: true);
  }

  return QuranDatabase.fromPath(file.path);
}
