import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class OnBoardProvdier extends ChangeNotifier {
  void storeInBoardScreansInfo() async {
    int isViewed = 0;
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setInt('InBoardScreans', isViewed);
    notifyListeners();
  }

  void getstoreInBoardScreansInfo() {}
}
