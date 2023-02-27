import 'package:flutter/material.dart';
import 'package:rdl_market_place_app/core/config/debug.dart';
import 'package:rdl_market_place_app/core/config/preference.dart';
import 'package:rdl_market_place_app/core/constants/app_constants.dart';

Future<Locale> getLocale() async {
  String languageCode =
      Preference.shared.getString(Preference.selectedLanguage) ??
          LanguageConstant.languageEn;
  String countryCode =
      Preference.shared.getString(Preference.selectedCountryCode) ??
          LanguageConstant.countryCodeEn;
  Debug.logE("getLocale Updated" "$languageCode   $countryCode");
  return _locale(languageCode, countryCode);
}

Locale _locale(String languageCode, String countryCode) {
  return languageCode.isNotEmpty
      ? Locale(languageCode, countryCode)
      : const Locale(LanguageConstant.languageEn, LanguageConstant.countryCodeEn);
}