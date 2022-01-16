import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LanguageChangeProvider with ChangeNotifier {
  Locale _currentLocale = new Locale("fa");

  Locale get currentLocale => _currentLocale;

  void changeLocale(String _locale) async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    preferences.setString('save', _locale.toString());

    print(preferences.getString('save'));
    this._currentLocale = new Locale(preferences.getString('save').toString());
    notifyListeners();
  }
}
