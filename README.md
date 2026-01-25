# QuranDb

A comprehensive Flutter plugin providing offline access to Quran data including Surahs, Ayahs, Juz, and page-based layouts with multi-language support.

## Features

- 📖 **Complete Quran Data**: All 114 Surahs, 6236 Ayahs, and 30 Juz
- 🌍 **Multi-language Support**: English, Russian, Uzbek (Latin & Cyrillic)
- � **Revelation Info**: Meccan/Medinan designation with localized city names
- �🔍 **Advanced Search**: Search Ayahs and Surah names with pagination
- 📄 **Page-based Layout**: Access Quran pages with lines and words for rendering
- ⚡ **Permanent Caching**: Fast access with automatic caching
- 🔒 **Offline-first**: All data stored locally in SQLite database
- 🛡️ **Type-safe**: Full Dart null-safety support with Freezed models

## Installation

Add `quran_db` to your `pubspec.yaml`:

```yaml
dependencies:
  quran_db: ^0.0.1
```

Then run:

```bash
flutter pub get
```

## Getting Started

### 1. Initialize the Plugin

Before using any features, initialize the plugin (typically in your `main.dart`):

```dart
import 'package:quran_db/quran_db.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  
  // Initialize QuranDb
  await QuranDb.instance.init();
  
  runApp(MyApp());
}
```

#### Custom Database Path (Optional)

You can provide a custom path to the database file:

```dart
await QuranDb.instance.init(customPath: '/path/to/your/quran_db.sqlite');
```

### 2. Access the Repository

All data access is through the `repository`:

```dart
final repository = QuranDb.instance.repository;
```

## API Reference

### Languages

The plugin supports 4 languages through the `QuranLanguage` enum:

```dart
enum QuranLanguage {
  english,        // English
  russian,        // Russian
  uzbekLatin,     // Uzbek (Latin script)
  uzbekCyrillic,  // Uzbek (Cyrillic script)
}
```

### Revelation Type

Each surah has a revelation type indicating where it was revealed:

```dart
enum RevelationType {
  meccan,   // Revealed in Mecca
  medinan,  // Revealed in Medina
}
```

The localized city names are available through `LocalizedSurahModel.revelationCity`:

| Language | Meccan | Medinan |
|----------|--------|---------|
| English | Mecca | Medina |
| Russian | Мекка | Медина |
| Uzbek Latin | Makka | Madina |
| Uzbek Cyrillic | Макка | Мадина |

### Surah Methods

#### Get All Surahs

```dart
final surahs = await QuranDb.instance.repository.getAllSurahs(
  QuranLanguage.english,
);

for (final surah in surahs) {
  print('${surah.number}. ${surah.name} (${surah.nameArabic})');
  print('   Meaning: ${surah.meaning}');
  print('   Verses: ${surah.versesCount}');
  print('   Revealed in: ${surah.revelationCity}');
  print('   Starts on page: ${surah.pageStart}');
}
```

#### Get Surah by Number

```dart
try {
  final alFatiha = await QuranDb.instance.repository.getSurahByNumber(
    1, // Surah number (1-114)
    QuranLanguage.english,
  );
  print('${alFatiha.name}: ${alFatiha.meaning}');
} on SurahNotFoundException catch (e) {
  print('Surah not found: ${e.surahNumber}');
}
```

#### Get Surahs by Juz

```dart
final surahsInJuz1 = await QuranDb.instance.repository.getSurahsByJuz(
  1, // Juz number (1-30)
  QuranLanguage.english,
);
```

### Ayah Methods

#### Get All Ayahs for a Surah

```dart
final ayahs = await QuranDb.instance.repository.getAyahsBySurah(
  1, // Surah number
  QuranLanguage.english,
);

for (final ayah in ayahs) {
  print('${ayah.surahNumber}:${ayah.ayahNumber} - ${ayah.text}');
}
```

#### Get Specific Ayah by Location

```dart
try {
  final ayah = await QuranDb.instance.repository.getAyahByLocation(
    2,  // Surah number
    255, // Ayah number (Ayatul Kursi)
    QuranLanguage.english,
  );
  print('Ayatul Kursi: ${ayah.text}');
} on AyahNotFoundException catch (e) {
  print('Ayah ${e.surahNumber}:${e.ayahNumber} not found');
}
```

#### Get All Ayahs in a Juz

```dart
final juz1Ayahs = await QuranDb.instance.repository.getAyahsByJuz(
  1, // Juz number (1-30)
  QuranLanguage.english,
);

print('Juz 1 has ${juz1Ayahs.length} ayahs');
```

#### Get Next/Previous Ayah

Navigate through the Quran with automatic surah boundary handling:

```dart
// Get the next ayah (returns null if at end of Quran)
final nextAyah = await QuranDb.instance.repository.getNextAyah(
  1,  // Current surah
  7,  // Current ayah (last ayah of Al-Fatiha)
  QuranLanguage.english,
);
if (nextAyah != null) {
  print('Next: ${nextAyah.surahNumber}:${nextAyah.ayahNumber}');
  // Output: Next: 2:1 (first ayah of Al-Baqarah)
}

// Get the previous ayah (returns null if at beginning of Quran)
final prevAyah = await QuranDb.instance.repository.getPreviousAyah(
  2,  // Current surah
  1,  // Current ayah (first ayah of Al-Baqarah)
  QuranLanguage.english,
);
if (prevAyah != null) {
  print('Previous: ${prevAyah.surahNumber}:${prevAyah.ayahNumber}');
  // Output: Previous: 1:7 (last ayah of Al-Fatiha)
}
```

#### Get Ayahs in a Range

Useful for reading sessions and bookmarks:

```dart
final ayahsInRange = await QuranDb.instance.repository.getAyahsInRange(
  startSurahNumber: 2,
  startAyahNumber: 255,
  endSurahNumber: 2,
  endAyahNumber: 257,
  language: QuranLanguage.english,
);

// Returns ayahs 2:255, 2:256, and 2:257
for (final ayah in ayahsInRange) {
  print('${ayah.surahNumber}:${ayah.ayahNumber}');
}

// Can also span multiple surahs
final crossSurahRange = await QuranDb.instance.repository.getAyahsInRange(
  startSurahNumber: 1,
  startAyahNumber: 1,
  endSurahNumber: 2,
  endAyahNumber: 5,
  language: QuranLanguage.english,
);
// Returns all of Al-Fatiha (1:1-1:7) plus Al-Baqarah 2:1-2:5
```

#### Get Random Ayah

Great for "Ayah of the Day" features:

```dart
final randomAyah = await QuranDb.instance.repository.getRandomAyah(
  QuranLanguage.english,
);

print('Random Ayah: ${randomAyah.surahNumber}:${randomAyah.ayahNumber}');
print(randomAyah.text);
```

### Juz Methods

#### Get All Juz

```dart
final juzList = await QuranDb.instance.repository.getAllJuz();

for (final juz in juzList) {
  print('Juz ${juz.number}: ${juz.name} (${juz.nameArabic})');
  print('   From: Surah ${juz.startSurahNumber}, Ayah ${juz.startAyahNumber}');
  print('   To: Surah ${juz.endSurahNumber}, Ayah ${juz.endAyahNumber}');
}
```

#### Get Juz by Number

```dart
try {
  final juz = await QuranDb.instance.repository.getJuzByNumber(30);
  print('Last Juz: ${juz.name}');
} on JuzNotFoundException catch (e) {
  print('Juz not found: ${e.juzNumber}');
}
```

#### Get Juz by Ayah Location

Find which juz contains a specific ayah (useful for showing current juz in UI):

```dart
final juz = await QuranDb.instance.repository.getJuzByAyahLocation(
  2,   // Surah number
  255, // Ayah number
);

print('Ayatul Kursi is in Juz ${juz.number} (${juz.name})');
```

### Page Methods

#### Get Page by Number

Get a complete Quran page with all its lines and words (useful for rendering Quran pages):


```dart
try {
  final page = await QuranDb.instance.repository.getPageByNumber(1);
  
  print('Page ${page.pageNumber}:');
  for (final line in page.lines) {
    print('  Line ${line.line.id} (${line.line.type.value}):');
    print('    Verse range: ${line.line.verseRange}');
    print('    Words: ${line.words.map((w) => w.word).join(' ')}');
  }
} on PageNotFoundException catch (e) {
  print('Page not found: ${e.pageNumber}');
}
```

#### Get Page Number by Ayah Location

Find which page contains a specific ayah (useful for "Go to Ayah" feature):

```dart
try {
  final pageNumber = await QuranDb.instance.repository.getPageNumberByAyahLocation(
    2,   // Surah number
    255, // Ayah number (Ayatul Kursi)
  );
  
  print('Ayatul Kursi is on page $pageNumber');
  
  // Now you can navigate to that page
  final page = await QuranDb.instance.repository.getPageByNumber(pageNumber);
} on AyahNotFoundException catch (e) {
  print('Ayah not found');
}
```

#### Line Types

Each line on a page has a type:

```dart
enum LineType {
  surahHeader,  // 'surah-header' - Surah name header
  basmala,      // 'basmala' - Bismillah line
  text,         // 'text' - Regular Quran text
}
```

### Search Methods

#### Search Everything (Ayahs + Surah Names)

```dart
final results = await QuranDb.instance.repository.search(
  'mercy',
  QuranLanguage.english,
  page: 1,      // Page number (1-indexed)
  pageSize: 50, // Results per page (default: 50)
);

print('Found ${results.totalItems} results');
print('Page ${results.currentPage} of ${results.totalPages}');

for (final result in results.items) {
  if (result.type == SearchResultType.surah) {
    print('Surah ${result.surahNumber}: ${result.fullText}');
  } else {
    print('${result.surahNumber}:${result.ayahNumber}');
    print('  ${result.contextBefore}[${result.matchedText}]${result.contextAfter}');
  }
}

// Pagination
if (results.hasNextPage) {
  final nextPage = await QuranDb.instance.repository.search(
    'mercy',
    QuranLanguage.english,
    page: results.currentPage + 1,
  );
}
```

#### Search Ayahs Only

```dart
final ayahResults = await QuranDb.instance.repository.searchAyahs(
  'Rahman',
  QuranLanguage.english,
  page: 1,
  pageSize: 20,
);
```

#### Search Surah Names Only

```dart
final surahResults = await QuranDb.instance.repository.searchSurahs(
  'Al',
  QuranLanguage.english,
);
// Returns List<SearchResultModel> (not paginated)
```

## Models

### LocalizedSurahModel

```dart
class LocalizedSurahModel {
  final int number;              // Surah number (1-114)
  final String nameArabic;       // Arabic name
  final String name;             // Localized name
  final String meaning;          // Localized meaning
  final int versesCount;         // Number of verses
  final int pageStart;           // Starting page number
  final RevelationType revelationType; // Meccan or Medinan
  final String revelationCity;   // Localized city name (Mecca/Medina)
}
```

### LocalizedAyahModel

```dart
class LocalizedAyahModel {
  final int id;           // Unique ID
  final int surahNumber;  // Surah number
  final int ayahNumber;   // Ayah number within surah
  final String text;      // Localized translation text
}
```

### LocalizedJuzModel

```dart
class LocalizedJuzModel {
  final int number;           // Juz number (1-30)
  final String nameArabic;    // Arabic name
  final String name;          // English transliteration
  final int startSurahNumber; // Starting surah
  final int startAyahNumber;  // Starting ayah
  final int endSurahNumber;   // Ending surah
  final int endAyahNumber;    // Ending ayah
}
```

### QuranPageModel

```dart
class QuranPageModel {
  final int pageNumber;              // Page number
  final List<QuranPageLineModel> lines; // Lines on this page
}

class QuranPageLineModel {
  final QuranLineModel line;           // Line data
  final List<QuranLineWordModel> words; // Words in this line
}

class QuranLineModel {
  final int id;
  final int pageNumber;
  final LineType type;      // surahHeader, basmala, or text
  final String verseRange;  // e.g., "1:1-1:4"
}

class QuranLineWordModel {
  final int id;
  final String location;  // Location identifier
  final String word;      // Word text
  final String qocV1;     // QOC version 1
  final String qocV2;     // QOC version 2
  final int lineId;       // Parent line ID
}
```

### SearchResultModel

```dart
class SearchResultModel {
  final SearchResultType type; // ayah or surah
  final int surahNumber;
  final int? ayahNumber;       // null for surah matches
  final String matchedText;    // The matched text
  final String fullText;       // Complete text
  final int matchStartIndex;   // Match start position
  final int matchEndIndex;     // Match end position
  final String contextBefore;  // Text before match (with ...)
  final String contextAfter;   // Text after match (with ...)
}
```

### PaginatedResultModel

```dart
class PaginatedResultModel<T> {
  final List<T> items;      // Results for current page
  final int currentPage;    // Current page (1-indexed)
  final int totalPages;     // Total number of pages
  final int totalItems;     // Total results count
  final int pageSize;       // Items per page
  final bool hasNextPage;   // Has more pages
  final bool hasPreviousPage;
}
```

## Error Handling

The plugin provides specific exceptions for different error cases:

```dart
try {
  await QuranDb.instance.repository.getSurahByNumber(115, QuranLanguage.english);
} on SurahNotFoundException catch (e) {
  // Surah number 115 doesn't exist (max is 114)
  print(e.message);
} on AyahNotFoundException catch (e) {
  // Specific ayah not found
  print('${e.surahNumber}:${e.ayahNumber}');
} on JuzNotFoundException catch (e) {
  // Juz not found
  print(e.juzNumber);
} on PageNotFoundException catch (e) {
  // Page not found
  print(e.pageNumber);
} on InvalidPageException catch (e) {
  // Invalid pagination page (e.g., page 0 or negative)
  print(e.page);
} on QuranDbNotInitializedException catch (e) {
  // Forgot to call QuranDb.instance.init()
  print(e.message);
} on DatabaseInitializationException catch (e) {
  // Database initialization failed
  print(e.message);
} on QuranDbException catch (e) {
  // Base exception for all QuranDb errors
  print(e.message);
}
```

## Complete Example

```dart
import 'package:flutter/material.dart';
import 'package:quran_db/quran_db.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await QuranDb.instance.init();
  runApp(const QuranApp());
}

class QuranApp extends StatelessWidget {
  const QuranApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Quran App',
      home: const SurahListScreen(),
    );
  }
}

class SurahListScreen extends StatefulWidget {
  const SurahListScreen({super.key});

  @override
  State<SurahListScreen> createState() => _SurahListScreenState();
}

class _SurahListScreenState extends State<SurahListScreen> {
  late Future<List<LocalizedSurahModel>> _surahsFuture;
  QuranLanguage _selectedLanguage = QuranLanguage.english;

  @override
  void initState() {
    super.initState();
    _loadSurahs();
  }

  void _loadSurahs() {
    _surahsFuture = QuranDb.instance.repository.getAllSurahs(_selectedLanguage);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Quran'),
        actions: [
          DropdownButton<QuranLanguage>(
            value: _selectedLanguage,
            items: QuranLanguage.values.map((lang) {
              return DropdownMenuItem(
                value: lang,
                child: Text(lang.name),
              );
            }).toList(),
            onChanged: (lang) {
              if (lang != null) {
                setState(() {
                  _selectedLanguage = lang;
                  _loadSurahs();
                });
              }
            },
          ),
        ],
      ),
      body: FutureBuilder<List<LocalizedSurahModel>>(
        future: _surahsFuture,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          }
          
          if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          }

          final surahs = snapshot.data!;
          return ListView.builder(
            itemCount: surahs.length,
            itemBuilder: (context, index) {
              final surah = surahs[index];
              return ListTile(
                leading: CircleAvatar(child: Text('${surah.number}')),
                title: Text(surah.name),
                subtitle: Text('${surah.nameArabic} • ${surah.meaning}'),
                trailing: Text('${surah.versesCount} ayahs'),
                onTap: () => _openSurah(surah),
              );
            },
          );
        },
      ),
    );
  }

  void _openSurah(LocalizedSurahModel surah) async {
    final ayahs = await QuranDb.instance.repository.getAyahsBySurah(
      surah.number,
      _selectedLanguage,
    );
    // Navigate to ayah list screen...
  }
}
```

## Cleanup

When you're done using the plugin (e.g., when the app closes):

```dart
await QuranDb.instance.close();
```

## License

MIT License

