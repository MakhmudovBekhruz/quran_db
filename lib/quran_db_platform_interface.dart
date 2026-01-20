import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'quran_db_method_channel.dart';

abstract class QuranDbPlatform extends PlatformInterface {
  /// Constructs a QuranDbPlatform.
  QuranDbPlatform() : super(token: _token);

  static final Object _token = Object();

  static QuranDbPlatform _instance = MethodChannelQuranDb();

  /// The default instance of [QuranDbPlatform] to use.
  ///
  /// Defaults to [MethodChannelQuranDb].
  static QuranDbPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [QuranDbPlatform] when
  /// they register themselves.
  static set instance(QuranDbPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
