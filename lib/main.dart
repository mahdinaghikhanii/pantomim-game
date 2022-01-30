import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:pantomim/generated/l10n.dart';
import 'package:pantomim/theme/configtheme.dart';
import 'package:pantomim/views/auth/get_start_screans.dart';
import 'package:pantomim/views/auth/home_screans.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'module/language_provider.dart';
import 'generated/l10n.dart';
import 'module/typeof_match_provider.dart';

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
  setData(String _local) async {
    SharedPreferences preferences = await SharedPreferences.getInstance();

    preferences.setString(
        'language',
        Provider.of<LanguageChangeProvider>(context, listen: true)
            .currentLocale
            .toString());
  }

  SharedPreferences? sharedPreferences;

  @override
  Widget build(
    BuildContext context,
  ) {
    return MultiProvider(
        providers: [
          ChangeNotifierProvider<LanguageChangeProvider>(
            create: (context) => LanguageChangeProvider(),
          ),
          ChangeNotifierProvider<ModelTypeOfMatch>(
            create: (context) => ModelTypeOfMatch(),
          ),
        ],
        child: Builder(
          builder: (context) => MaterialApp(
              locale: Provider.of<LanguageChangeProvider>(context, listen: true)
                  .currentLocale,
              // ignore: prefer_const_literals_to_create_immutables
              localizationsDelegates: [
                S.delegate,
                GlobalMaterialLocalizations.delegate,
                GlobalWidgetsLocalizations.delegate,
                GlobalCupertinoLocalizations.delegate,
              ],
              supportedLocales: S.delegate.supportedLocales,
              debugShowCheckedModeBanner: false,
              home:
                  isviewed != 0 ? const GetStartScreans() : const HomeScreans(),
              theme: ConfigTheme.light().getTheme(
                  Provider.of<LanguageChangeProvider>(context, listen: true)
                      .currentLocale
                      .languageCode)),
        ));
  }
}
