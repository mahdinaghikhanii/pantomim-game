import 'package:flutter/material.dart';
import 'package:pantomim/theme/theme.dart';
import 'package:pantomim/views/auth/get_start_screans.dart';
import 'package:pantomim/views/auth/home_screans.dart';
import 'package:shared_preferences/shared_preferences.dart';

int? isviewed;
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
  isviewed = sharedPreferences.getInt('onBoard');
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  SharedPreferences? sharedPreferences;

  @override
  Widget build(
    BuildContext context,
  ) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: isviewed != 0 ? const GetStartScreans() : const HomeScreans(),
      theme: MyThemes.lightTheme,
      themeMode: ThemeMode.system,
      darkTheme: MyThemes.darkTheme,
    );
  }
}
