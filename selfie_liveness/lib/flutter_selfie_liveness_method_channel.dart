import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'flutter_selfie_liveness_platform_interface.dart';

/// An implementation of [FlutterSelfieLivenessPlatform] that uses method channels.
class MethodChannelFlutterSelfieLiveness extends FlutterSelfieLivenessPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('flutter_selfie_liveness');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
