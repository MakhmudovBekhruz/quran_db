// This is a basic Flutter integration test.
//
// Since integration tests run in a full Flutter application, they can interact
// with the host side of a plugin implementation, unlike Dart unit tests.
//
// For more information about Flutter integration tests, please see
// https://docs.flutter.dev/cookbook/testing/integration/introduction

import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';

import 'package:quran_db/quran_db.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  testWidgets('QuranDb initialization test', (WidgetTester tester) async {
    // Test that the plugin initializes correctly
    await QuranDb.instance.init();
    expect(QuranDb.instance.isInitialized, true);

    // Test that we can get surahs
    final surahs = await QuranDb.instance.repository.getAllSurahs(
      QuranLanguage.english,
    );
    expect(surahs.isNotEmpty, true);
    expect(surahs.length, 114); // There are 114 surahs in the Quran

    // Test that we can get a specific surah
    final alFatiha = await QuranDb.instance.repository.getSurahByNumber(
      1,
      QuranLanguage.english,
    );
    expect(alFatiha.number, 1);
    expect(alFatiha.versesCount, 7);

    // Test that we can get juz
    final juzList = await QuranDb.instance.repository.getAllJuz();
    expect(juzList.length, 30); // There are 30 juz in the Quran

    // Close the database
    await QuranDb.instance.close();
    expect(QuranDb.instance.isInitialized, false);
  });
}
