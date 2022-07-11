import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../module/constans/constant.dart';

class LanguageProvider extends ChangeNotifier {
  Locale _currentLocale = const Locale('fa');
  Locale get currentLocale => _currentLocale;

  fetchLocale() async {
    var prefs = await SharedPreferences.getInstance();
    if (prefs.getString(Constans.LANGUAGE_CODE) == null) {
      _currentLocale = const Locale('fa');

      return Null;
    }
    _currentLocale = Locale(prefs.getString(Constans.LANGUAGE_CODE).toString());

    return Null;
  }

  void changeLanguage(String type) async {
    var prefs = await SharedPreferences.getInstance();
    if (_currentLocale == Locale(type.toString())) {
      return;
    }
    if (Locale(type.toString()) == const Locale("fa")) {
      _currentLocale = const Locale("fa");
      await prefs.setString(Constans.LANGUAGE_CODE, 'fa');
    } else {
      _currentLocale = const Locale("en");
      await prefs.setString(Constans.LANGUAGE_CODE, 'en');
    }
    notifyListeners();
  }
}
