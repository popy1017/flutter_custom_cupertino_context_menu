import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:custom_cupertino_context_menu/custom_cupertino_context_menu.dart';

void main() {
  const MethodChannel channel = MethodChannel('custom_cupertino_context_menu');

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
    expect(await CustomCupertinoContextMenu.platformVersion, '42');
  });
}
