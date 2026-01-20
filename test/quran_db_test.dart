import 'package:flutter_test/flutter_test.dart';
import 'package:quran_db/quran_db.dart';

void main() {
  group('QuranDb', () {
    test('instance is a singleton', () {
      final instance1 = QuranDb.instance;
      final instance2 = QuranDb.instance;
      expect(identical(instance1, instance2), true);
    });

    test('isInitialized is false before init', () {
      expect(QuranDb.instance.isInitialized, false);
    });

    test('repository throws before init', () {
      expect(
        () => QuranDb.instance.repository,
        throwsA(isA<QuranDbNotInitializedException>()),
      );
    });
  });

  group('QuranLanguage', () {
    test('has all expected values', () {
      expect(QuranLanguage.values.length, 4);
      expect(QuranLanguage.values, contains(QuranLanguage.english));
      expect(QuranLanguage.values, contains(QuranLanguage.russian));
      expect(QuranLanguage.values, contains(QuranLanguage.uzbekLatin));
      expect(QuranLanguage.values, contains(QuranLanguage.uzbekCyrillic));
    });
  });

  group('LineType', () {
    test('has all expected values', () {
      expect(LineType.values.length, 3);
      expect(LineType.surahHeader.value, 'surah-header');
      expect(LineType.basmala.value, 'basmala');
      expect(LineType.text.value, 'text');
    });

    test('fromValue returns correct type', () {
      expect(LineType.fromValue('surah-header'), LineType.surahHeader);
      expect(LineType.fromValue('basmala'), LineType.basmala);
      expect(LineType.fromValue('text'), LineType.text);
    });

    test('fromValue returns text for unknown values', () {
      expect(LineType.fromValue('unknown'), LineType.text);
    });
  });

  group('Exceptions', () {
    test('QuranDbException has correct message', () {
      const exception = QuranDbException('test message');
      expect(exception.message, 'test message');
      expect(exception.toString(), 'QuranDbException: test message');
    });

    test('SurahNotFoundException has correct surah number', () {
      const exception = SurahNotFoundException(115);
      expect(exception.surahNumber, 115);
    });

    test('AyahNotFoundException has correct surah and ayah numbers', () {
      const exception = AyahNotFoundException(1, 8);
      expect(exception.surahNumber, 1);
      expect(exception.ayahNumber, 8);
    });

    test('JuzNotFoundException has correct juz number', () {
      const exception = JuzNotFoundException(31);
      expect(exception.juzNumber, 31);
    });

    test('PageNotFoundException has correct page number', () {
      const exception = PageNotFoundException(605);
      expect(exception.pageNumber, 605);
    });

    test('InvalidPageException has correct page number', () {
      const exception = InvalidPageException(0);
      expect(exception.page, 0);
    });
  });
}
