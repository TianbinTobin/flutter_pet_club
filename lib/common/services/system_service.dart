part of 'services.dart';

class SystemService {
  /// 设置系统UI展示样式(全面屏)
  Future<void> enterSystemUIFullScreen() async {
    await SystemChrome.setEnabledSystemUIMode(
      SystemUiMode.manual,
      overlays: [],
    );
  }

  /// 设置系统UI展示样式(全面屏)
  Future<void> exitSystemUIFullScreen() async {
    await SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);
  }

  /// 设置系统UI展示样式(全面屏)
  Future<void> setSystemUIStyle() async {
    await SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle.dark.copyWith(
        statusBarColor: Colors.transparent,
        systemNavigationBarColor: Colors.transparent,
      ),
    );
  }
}
