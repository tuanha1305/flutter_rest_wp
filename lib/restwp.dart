import 'dart:async';

import 'package:flutter/services.dart';

class Restwp {
  static const MethodChannel _channel =
      const MethodChannel('restwp');

  static Future<String> get platformVersion async {
    final String version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
}
