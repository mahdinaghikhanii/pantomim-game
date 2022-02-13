import 'package:flutter/material.dart';

class FinishidGameScreans extends StatelessWidget {
  const FinishidGameScreans({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        onWillPop: () async {
          ScaffoldMessenger.of(context);
          return false;
        },
        child: const Scaffold());
  }
}
