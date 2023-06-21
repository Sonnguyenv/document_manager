import 'package:shared_preferences/shared_preferences.dart';

// Storing and retrieving user preferences
class PreferenceManager {
  static const String _keyLanguageCode = 'languageCode';

  static Future<String?> getLanguageCode() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString(_keyLanguageCode);
  }

  static Future<void> setLanguageCode(String languageCode) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString(_keyLanguageCode, languageCode);
  }
}
