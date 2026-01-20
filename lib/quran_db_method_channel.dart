import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'quran_db_platform_interface.dart';

/// An implementation of [QuranDbPlatform] that uses method channels.
class MethodChannelQuranDb extends QuranDbPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('quran_db');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
