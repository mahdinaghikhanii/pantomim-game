import 'package:flutter/material.dart';
import 'package:pantomim/theme/theme.dart';
import 'package:pantomim/views/auth/choice_your_topic.dart';

import 'package:pantomim/views/auth/get_start_screans.dart';
import 'package:pantomim/views/auth/home_screans.dart';
import 'package:pantomim/views/auth/meno_screans.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(
    BuildContext context,
  ) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const GetStartScreans(),
      theme: MyThemes.lightTheme,
      themeMode: ThemeMode.system,
      darkTheme: MyThemes.darkTheme,
    );
  }
}
