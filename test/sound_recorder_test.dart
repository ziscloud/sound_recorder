import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:sound_recorder/sound_recorder.dart';

void main() {
  const MethodChannel channel = MethodChannel('sound_recorder');

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
    expect(await SoundRecorder.platformVersion, '42');
  });
}
