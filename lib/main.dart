import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'generated/l10n.dart';
import 'models/team.dart';
import 'module/theme/configtheme.dart';
import 'perfs/history.dart';
import 'perfs/team_data.dart';
import 'provider/gametheme_provider.dart';
import 'provider/language_providr.dart';
import 'provider/onboard_provider.dart';
import 'provider/pagecontoroler_provider.dart';
import 'provider/team_provider.dart';
import 'views/screan/home_screans.dart';
import 'views/screan/obboard_screans.dart';

int? isviewed;

LanguageProvider languageProvider = LanguageProvider();
History history = History();
TeamProvider teamProvider = TeamProvider();

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Directory directory = await getApplicationDocumentsDirectory();
  Hive.init(directory.path);
  Hive.registerAdapter(TeamModelAdapter());
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
  SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
  await languageProvider.fetchLocale();
  await teamProvider.getShowIconbackGame();

  isviewed = sharedPreferences.getInt('InBoardScreans');

  runApp(MyApp(languageProvider: languageProvider));
}

class MyApp extends StatelessWidget {
  final LanguageProvider languageProvider;
  const MyApp({Key? key, required this.languageProvider}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (context) => PageContorolerProvider()),
          ChangeNotifierProvider(create: (context) => History()),
          ChangeNotifierProvider(create: ((context) => TeamProvider())),
          ChangeNotifierProvider(create: (context) => TheThemeOfTheGame()),
          ChangeNotifierProvider(create: ((context) => OnBoardProvdier())),
          ChangeNotifierProvider(create: (context) => TeamData()),
          ChangeNotifierProvider<LanguageProvider>(
              create: (context) => languageProvider)
        ],
        child: Consumer<LanguageProvider>(builder: (context, model, child) {
          return MaterialApp(
              localizationsDelegates: const [
                S.delegate,
                GlobalMaterialLocalizations.delegate,
                GlobalWidgetsLocalizations.delegate,
                GlobalCupertinoLocalizations.delegate,
              ],
              supportedLocales: S.delegate.supportedLocales,
              debugShowCheckedModeBanner: false,
              locale: model.currentLocale,
              title: "پانتومیم",
              home:
                  isviewed != 0 ? const OnBoardScreans() : const HomeScreans(),
              theme: ConfigTheme.light().getTheme(
                  Provider.of<LanguageProvider>(context, listen: true)
                      .currentLocale
                      .languageCode));
        }));
  }
}
