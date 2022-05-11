import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:pantomim/generated/l10n.dart';
import 'package:pantomim/theme/configtheme.dart';
import 'package:pantomim/views/auth/get_start_screans.dart';
import 'package:pantomim/views/auth/home_screans.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'generated/l10n.dart';
import 'util/view_models/provider/provider.dart';

int? isviewed;
AppProvider appProvider = AppProvider();
// ignore: unused_element
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
  SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
  await appProvider.fetchLocale();
  isviewed = sharedPreferences.getInt('onBoard');

  runApp(MyApp(
    appProvider: appProvider,
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key, required this.appProvider}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
  final AppProvider appProvider;
}

class _MyAppState extends State<MyApp> {
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
              title: "Pantomim",
              home:
                  isviewed != 0 ? const GetStartScreans() : const HomeScreans(),
              theme: ConfigTheme.light().getTheme(
                  Provider.of<AppProvider>(context, listen: true)
                      .currentLocale
                      .languageCode));
        }));
  }
}
