import 'package:flutter/material.dart';

extension ExtensionContext on BuildContext {
  double get width => MediaQuery.of(this).size.width;
  double get height => MediaQuery.of(this).size.height;

  void nextScreans(Widget child) async {
    await Navigator.push(this, MaterialPageRoute(builder: (context) => child));
  }

  void showDialogs(Widget child) async {
    await showDialog(context: this, builder: (context) => child);
  }
}
