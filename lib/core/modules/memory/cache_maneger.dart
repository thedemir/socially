import 'package:shared_preferences/shared_preferences.dart';

mixin CacheManeger {
  static Future<void> saveToken(String token) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString("token", token);
    print("$token");
  }

  static Future<String?> getToken() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString("token");
  }

  static Future<void> setBoolValue(String key, bool value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setBool(key, value);
    print("kaydedildi =>$key  $value");
  }

  static Future<bool> getBoolValue(String key) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();

    return prefs.getBool(key) ?? false;
  }

  static Future<void> saveString(String key, String value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString(key.toString(), value.toString());
    print("kaydedildi => $value");
  }

  static Future<void> saveList(String key, List<String> list) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setStringList(key.toString(), list);
    print("kaydedildi => $list");
  }

  static Future getList(String key) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();

    return prefs.getStringList(key);
  }

  static Future remove(String key) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();

    return prefs.remove(key);
  }

  static Future<void> saveInt(String key, int value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setInt(key.toString(), value);
    print("kaydedildi => $value");
  }

  static Future getInt(String key) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getInt(key);
  }

  static Future<void> deleteString(String key) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.remove(key.toString());

    print("silindi ");
  }

  static Future getString(String key) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    print("$key");
    return prefs.getString(key) ?? "";
  }
}

enum SharedPreferencesKey { TOKEN }
