import 'package:document_manager/Language/language_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

// Storing and retrieving user preferences
class PreferenceManager {
  static const String _keyLanguageString = 'languageString';

  static Future<LanguageStatus> getLanguage() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? languageString = prefs.getString(_keyLanguageString);
    if (languageString != null) {
      return LanguageStatus.values.firstWhere( (item) => item.name == languageString );
    }
    return LanguageStatus.english;
  }

  static Future<void> setLanguage(LanguageStatus languageStatus) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString(_keyLanguageString, languageStatus.name);
  }
}
