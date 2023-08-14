import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SettingService {
  /// 设置系统UI展示样式(全面屏)
  static Future<void> setSystemUIStyle() async {
    await SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle.dark.copyWith(
          statusBarColor: Colors.transparent,
          systemNavigationBarColor: Colors.transparent),
    );
  }
}
