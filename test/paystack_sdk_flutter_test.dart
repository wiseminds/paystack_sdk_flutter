import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:paystack_sdk_flutter/paystack_sdk_flutter.dart';

void main() {
  const MethodChannel channel = MethodChannel('paystack_sdk_flutter');

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
    expect(await PaystackSdkFlutter.platformVersion, '42');
  });
}
