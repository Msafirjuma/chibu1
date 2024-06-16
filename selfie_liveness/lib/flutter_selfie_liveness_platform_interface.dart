import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'flutter_selfie_liveness_method_channel.dart';

abstract class FlutterSelfieLivenessPlatform extends PlatformInterface {
  /// Constructs a FlutterSelfieLivenessPlatform.
  FlutterSelfieLivenessPlatform() : super(token: _token);

  static final Object _token = Object();

  static FlutterSelfieLivenessPlatform _instance = MethodChannelFlutterSelfieLiveness();

  /// The default instance of [FlutterSelfieLivenessPlatform] to use.
  ///
  /// Defaults to [MethodChannelFlutterSelfieLiveness].
  static FlutterSelfieLivenessPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [FlutterSelfieLivenessPlatform] when
  /// they register themselves.
  static set instance(FlutterSelfieLivenessPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
