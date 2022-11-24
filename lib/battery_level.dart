import 'package:flutter/services.dart';

const _platform = MethodChannel("battery_level");

class BatteryLevel {
  
  static Future<int?> get level async {
    try {
      final int? result = await _platform.invokeMethod<int>('getBatteryLevel');
      return result;
    } on PlatformException catch (e) {
      throw "Failed to get battery level: '${e.message}'.";
    }
  }
}
