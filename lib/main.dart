import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:pantomim/views/module/theme/configtheme.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'generated/l10n.dart';
import 'provider/provider.dart';
import 'views/auth/home_screans.dart';
import 'views/auth/obboard_screans.dart';

int? isviewed;
AppProvider appProvider = AppProvider();
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
  SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
  await appProvider.fetchLocale();
  isviewed = sharedPreferences.getInt('InBoardScreans');

  runApp(MyApp(
    appProvider: appProvider,
  ));
}

class MyApp extends StatelessWidget {
  final AppProvider appProvider;
  const MyApp({Key? key, required this.appProvider}) : super(key: key);

  @override
  Widget build(
    BuildContext context,
  ) {
    return ChangeNotifierProvider<AppProvider>(
        create: (context) => appProvider,
        child: Consumer<AppProvider>(builder: (context, model, child) {
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
                  Provider.of<AppProvider>(context, listen: true)
                      .currentLocale
                      .languageCode));
        }));
  }
}
