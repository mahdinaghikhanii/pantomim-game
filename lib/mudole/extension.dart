import 'package:flutter/material.dart';

extension ContextExtension on BuildContext {
  TextTheme get textTheme => Theme.of(this).textTheme;

  void nextScreans(Widget screanName) {
    Navigator.push(this, MaterialPageRoute(builder: (context) => screanName));
  }

  void backScreans() {
    Navigator.pop(this);
  }

  void nextScreansAndReplace(Widget screanName) {
    Navigator.pushReplacement(
        this, MaterialPageRoute(builder: (context) => screanName));
  }
}
