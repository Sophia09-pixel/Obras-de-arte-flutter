import 'package:shared_preferences/shared_preferences.dart';

class SettingsRepository {
  static const _keyShowIntro = 'show_intro';
  final SharedPreferences _prefs;
  SettingsRepository._(this._prefs);
  static Future<SettingsRepository> create() async {
    final prefs = await SharedPreferences.getInstance();
    return SettingsRepository._(prefs);
  }

  Future<bool> getShowIntro() =>
      Future.value(_prefs.getBool(_keyShowIntro) ?? true);
  Future<void> setShowIntro(bool value) => _prefs.setBool(_keyShowIntro, value);
}