import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class StorageService extends GetxService {
  static StorageService get to => Get.find();

  late final SharedPreferences _sharedPreferences;

  Future<StorageService> init() async {
    _sharedPreferences = await SharedPreferences.getInstance();
    return this;
  }

  Future<bool> setInt(String key, int value) async {
    return await _sharedPreferences.setInt(key, value);
  }

  Future<bool> setBool(String key, bool value) async {
    return await _sharedPreferences.setBool(key, value);
  }

  Future<bool> setDouble(String key, double value) async {
    return await _sharedPreferences.setDouble(key, value);
  }

  Future<bool> setString(String key, String value) async {
    return await _sharedPreferences.setString(key, value);
  }

  Future<bool> setStringList(String key, List<String> value) async {
    return await _sharedPreferences.setStringList(key, value);
  }

  int getInt(String key) {
    return _sharedPreferences.getInt(key) ?? 0;
  }

  bool getBool(String key) {
    return _sharedPreferences.getBool(key) ?? false;
  }

  double getDouble(String key) {
    return _sharedPreferences.getDouble(key) ?? 0;
  }

  String getString(String key) {
    return _sharedPreferences.getString(key) ?? '';
  }

  List<String> getStringList(String key) {
    return _sharedPreferences.getStringList(key) ?? [];
  }

  Future<bool> remove(String key) async {
    return await _sharedPreferences.remove(key);
  }

  Future<bool> clear() async {
    return await _sharedPreferences.clear();
  }
}
