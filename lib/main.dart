import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'generated/l10n.dart';
import 'module/theme/configtheme.dart';
import 'provider/language_providr.dart';
import 'provider/provider.dart';

import 'views/screan/home_screans.dart';
import 'views/screan/obboard_screans.dart';

int? isviewed;
AppProvider appProvider = AppProvider();
LanguageProvider languageProvider = LanguageProvider();
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
  SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
  await languageProvider.fetchLocale();
  isviewed = sharedPreferences.getInt('InBoardScreans');

  runApp(MyApp(
    languageProvider: languageProvider,
  ));
}

class MyApp extends StatelessWidget {
  final LanguageProvider languageProvider;
  const MyApp({Key? key, required this.languageProvider}) : super(key: key);

  @override
  Widget build(
    BuildContext context,
  ) {
    return MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (context) => AppProvider()),
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
              home: isviewed != 0
                  ? const OnBoardScreans()
                  : const OnBoardScreans(),
              theme: ConfigTheme.light().getTheme(
                  Provider.of<LanguageProvider>(context, listen: true)
                      .currentLocale
                      .languageCode));
        }));
  }
}
