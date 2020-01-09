import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:forest_login/forest_login.dart';

void main() {
  const MethodChannel channel = MethodChannel('forest_login');

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
    expect(await ForestLogin.platformVersion, '42');
  });
}
