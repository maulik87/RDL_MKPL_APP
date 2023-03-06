import 'dart:async';

import 'package:get_storage/get_storage.dart';

/* global class for handle all the preference activity into application */

class Preference {
  factory Preference() {
    return _preference;
  }

  Preference._internal();

  // Preference key
  static const String apiKey = 'API_KEY';
  static const String token = 'TOKEN';
  static const String isLogin = 'IS_LOGIN';
  static const String userData = 'USER_DATA';
  static const String selectedLanguage = "LANGUAGE";
  static const String selectedCountryCode = "SELECTED_COUNTRY_CODE";

  // ------------------ SINGLETON -----------------------
  static final Preference _preference = Preference._internal();

  static Preference get shared => _preference;

  static GetStorage? _pref;

  /* make connection with preference only once in application */
  Future<GetStorage?> instance() async {
    if (_pref != null) return _pref;
    await GetStorage.init().then((value) {
      if (value) {
        _pref = GetStorage();
      }
    }).catchError((onError) {
      _pref = null;
    });
    return _pref;
  }

  T? getPrefValue<T>(String key) => _pref!.read<T>(key);

  Future<void> setPrefValue<T>(String key, T value) => _pref!.write(key, value);

  String? getString(String key) {
    return _pref!.read(key);
  }

  Future<void> setString(String key, String value) {
    return _pref!.write(key, value);
  }

  int? getInt(String key) {
    return _pref!.read(key);
  }

  Future<void> setInt(String key, int value) {
    return _pref!.write(key, value);
  }

  bool? getBool(String key) {
    return _pref!.read(key);
  }

  Future<void> setBool(String key, bool value) {
    return _pref!.write(key, value);
  }

  // Double get & set
  double? getDouble(String key) {
    return _pref!.read(key);
  }

  Future<void> setDouble(String key, double value) {
    return _pref!.write(key, value);
  }

  // Array get & set
  List<String>? getStringList(String key) {
    return _pref!.read(key);
  }

  Future<void> setStringList(String key, List<String> value) {
    return _pref!.write(key, value);
  }

  /* remove element from preferences */
  Future<void> remove(String key) async {
    final pref = await instance();

    return pref!.remove(key);
  }

  /* remove all elements from preferences */
  static Future<bool> clear() async {
    // return await _pref.clear();
    _pref!.getKeys().forEach((String key) async {
      await _pref!.remove(key);
    });

    return Future.value(true);
  }

  Future<bool> clearLogout() async {
    await _pref!.remove(token);
    await _pref!.remove(isLogin);
    await _pref!.remove(userData);
    return Future.value(true);
  }
}
