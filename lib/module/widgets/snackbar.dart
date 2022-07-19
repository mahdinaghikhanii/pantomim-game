import 'package:flutter/material.dart';
import 'package:pantomim/module/constans/constant.dart';

class CustomSnackAlert {
  static SnackBar showErrorSnackBar(String message) {
    return SnackBar(
      content: Text(message,
          style: TextStyle(
              color: kwhite,
              fontSize: 16,
              fontFamily: faPrimaryFontFamily,
              fontWeight: FontWeight.bold)),
      backgroundColor: kblue,
      duration: const Duration(seconds: 4),
    );
  }
  // ... another snackbar
}
