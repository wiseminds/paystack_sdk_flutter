
import 'dart:async';

import 'package:flutter/services.dart';

class PaystackSdkFlutter {
  static const MethodChannel _channel =
      const MethodChannel('paystack_sdk_flutter');

  static Future<String?> get platformVersion async {
    final String? version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
}
