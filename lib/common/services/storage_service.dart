part of 'services.dart';

class StorageService {
  final Future<SharedPreferences> _sharedPreferences =
      SharedPreferences.getInstance();

  Future<bool> setInt(String key, int value) async {
    return _sharedPreferences.then((pref) => pref.setInt(key, value));
  }

  Future<bool> setBool(String key, bool value) async {
    return _sharedPreferences.then((pref) => pref.setBool(key, value));
  }

  Future<bool> setDouble(String key, double value) async {
    return _sharedPreferences.then((pref) => pref.setDouble(key, value));
  }

  Future<bool> setString(String key, String value) async {
    return _sharedPreferences.then((pref) => pref.setString(key, value));
  }

  Future<bool> setStringList(String key, List<String> value) async {
    return _sharedPreferences.then((pref) => pref.setStringList(key, value));
  }

  Future<int> getInt(String key) {
    return _sharedPreferences.then((pref) => pref.getInt(key) ?? 0);
  }

  Future<bool> getBool(String key) {
    return _sharedPreferences.then((pref) => pref.getBool(key) ?? false);
  }

  Future<double> getDouble(String key) {
    return _sharedPreferences.then((pref) => pref.getDouble(key) ?? 0);
  }

  Future<String> getString(String key) {
    return _sharedPreferences.then((pref) => pref.getString(key) ?? '');
  }

  Future<List<String>> getStringList(String key) {
    return _sharedPreferences.then((pref) => pref.getStringList(key) ?? []);
  }

  Future<bool> remove(String key) async {
    return _sharedPreferences.then((pref) => pref.remove(key));
  }

  Future<bool> clear() async {
    return _sharedPreferences.then((pref) => pref.clear());
  }
}
