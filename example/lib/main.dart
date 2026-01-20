import 'package:flutter/material.dart';
import 'dart:async';

import 'package:quran_db/quran_db.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String _status = 'Initializing...';
  List<LocalizedSurahModel> _surahs = [];
  bool _isLoading = true;

  @override
  void initState() {
    super.initState();
    _initQuranDb();
  }

  Future<void> _initQuranDb() async {
    try {
      // Initialize the QuranDb plugin
      await QuranDb.instance.init();

      // Get all surahs in English
      final surahs = await QuranDb.instance.repository.getAllSurahs(
        QuranLanguage.english,
      );

      if (!mounted) return;

      setState(() {
        _status = 'Loaded ${surahs.length} surahs';
        _surahs = surahs;
        _isLoading = false;
      });
    } on QuranDbException catch (e) {
      if (!mounted) return;
      setState(() {
        _status = 'Error: ${e.message}';
        _isLoading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('QuranDb Example'),
        ),
        body: _isLoading
            ? const Center(child: CircularProgressIndicator())
            : Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text(_status),
                  ),
                  Expanded(
                    child: ListView.builder(
                      itemCount: _surahs.length,
                      itemBuilder: (context, index) {
                        final surah = _surahs[index];
                        return ListTile(
                          leading: CircleAvatar(
                            child: Text('${surah.number}'),
                          ),
                          title: Text(surah.name),
                          subtitle: Text(
                            '${surah.nameArabic} - ${surah.meaning}',
                          ),
                          trailing: Text('${surah.versesCount} verses'),
                        );
                      },
                    ),
                  ),
                ],
              ),
      ),
    );
  }
}
