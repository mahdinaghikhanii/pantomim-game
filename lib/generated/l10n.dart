// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Play`
  String get titleHomeScreans1 {
    return Intl.message(
      'Play',
      name: 'titleHomeScreans1',
      desc: '',
      args: [],
    );
  }

  /// ` with\nFriends`
  String get titleHomeScreans2 {
    return Intl.message(
      ' with\nFriends',
      name: 'titleHomeScreans2',
      desc: '',
      args: [],
    );
  }

  /// `START PLAY`
  String get textButtonHomeScrens {
    return Intl.message(
      'START PLAY',
      name: 'textButtonHomeScrens',
      desc: '',
      args: [],
    );
  }

  /// `HOW TO PLAY ?`
  String get textButtonHowToPlayHomeScreans {
    return Intl.message(
      'HOW TO PLAY ?',
      name: 'textButtonHowToPlayHomeScreans',
      desc: '',
      args: [],
    );
  }

  /// `Pantomim`
  String get textTitleMenoScreans1 {
    return Intl.message(
      'Pantomim',
      name: 'textTitleMenoScreans1',
      desc: '',
      args: [],
    );
  }

  /// `Game`
  String get textTitleMenoScreans2 {
    return Intl.message(
      'Game',
      name: 'textTitleMenoScreans2',
      desc: '',
      args: [],
    );
  }

  /// `Best Game For Family`
  String get textTitleMenoScreans3 {
    return Intl.message(
      'Best Game For Family',
      name: 'textTitleMenoScreans3',
      desc: '',
      args: [],
    );
  }

  /// `Let's Become\na New\nNormal Game`
  String get detailButtonMenoScreansNormalGame {
    return Intl.message(
      'Let`s Become\na New\nNormal Game',
      name: 'detailButtonMenoScreansNormalGame',
      desc: '',
      args: [],
    );
  }

  /// `Lets Go`
  String get detailButtonMenoScreansNormalGameLestsGo {
    return Intl.message(
      'Lets Go',
      name: 'detailButtonMenoScreansNormalGameLestsGo',
      desc: '',
      args: [],
    );
  }

  /// `Fight`
  String get detailButtonMenoScreansFight {
    return Intl.message(
      'Fight',
      name: 'detailButtonMenoScreansFight',
      desc: '',
      args: [],
    );
  }

  /// `Spead`
  String get detailButtonMenoScreansSpead {
    return Intl.message(
      'Spead',
      name: 'detailButtonMenoScreansSpead',
      desc: '',
      args: [],
    );
  }

  /// `Score`
  String get detailButtonMenoScreansScore {
    return Intl.message(
      'Score',
      name: 'detailButtonMenoScreansScore',
      desc: '',
      args: [],
    );
  }

  /// `Setting`
  String get detailButtonMenoScreansSetting {
    return Intl.message(
      'Setting',
      name: 'detailButtonMenoScreansSetting',
      desc: '',
      args: [],
    );
  }

  /// `Select Language`
  String get dialogSettingsSelectLanguage {
    return Intl.message(
      'Select Language',
      name: 'dialogSettingsSelectLanguage',
      desc: '',
      args: [],
    );
  }

  /// `Music`
  String get dialogSettingsMusick {
    return Intl.message(
      'Music',
      name: 'dialogSettingsMusick',
      desc: '',
      args: [],
    );
  }

  /// `New contest theme :`
  String get dialogTypeOfMatchSubjectTitle {
    return Intl.message(
      'New contest theme :',
      name: 'dialogTypeOfMatchSubjectTitle',
      desc: '',
      args: [],
    );
  }

  /// `Animal`
  String get dialogTypeOfMatchbuttontextAnimal {
    return Intl.message(
      'Animal',
      name: 'dialogTypeOfMatchbuttontextAnimal',
      desc: '',
      args: [],
    );
  }

  /// `Sport`
  String get dialogTypeOfMatchbuttontextSport {
    return Intl.message(
      'Sport',
      name: 'dialogTypeOfMatchbuttontextSport',
      desc: '',
      args: [],
    );
  }

  /// `Food`
  String get dialogTypeOfMatchbuttontextFood {
    return Intl.message(
      'Food',
      name: 'dialogTypeOfMatchbuttontextFood',
      desc: '',
      args: [],
    );
  }

  /// `Country`
  String get dialogTypeOfMatchbuttontextCountry {
    return Intl.message(
      'Country',
      name: 'dialogTypeOfMatchbuttontextCountry',
      desc: '',
      args: [],
    );
  }

  /// `Thing`
  String get dialogTypeOfMatchbuttontextThing {
    return Intl.message(
      'Thing',
      name: 'dialogTypeOfMatchbuttontextThing',
      desc: '',
      args: [],
    );
  }

  /// `Movie`
  String get dialogTypeOfMatchbuttontextMovie {
    return Intl.message(
      'Movie',
      name: 'dialogTypeOfMatchbuttontextMovie',
      desc: '',
      args: [],
    );
  }

  /// `Book`
  String get dialogTypeOfMatchbuttontextBook {
    return Intl.message(
      'Book',
      name: 'dialogTypeOfMatchbuttontextBook',
      desc: '',
      args: [],
    );
  }

  /// `Tourism`
  String get dialogTypeOfMatchbuttontextTourism {
    return Intl.message(
      'Tourism',
      name: 'dialogTypeOfMatchbuttontextTourism',
      desc: '',
      args: [],
    );
  }

  /// `General`
  String get dialogTypeOfMatchbuttontextGeneral {
    return Intl.message(
      'General',
      name: 'dialogTypeOfMatchbuttontextGeneral',
      desc: '',
      args: [],
    );
  }

  /// `Tecnology`
  String get dialogTypeOfMatchbuttontextTecnology {
    return Intl.message(
      'Tecnology',
      name: 'dialogTypeOfMatchbuttontextTecnology',
      desc: '',
      args: [],
    );
  }

  /// `Music`
  String get dialogTypeOfMatchbuttontextMusic {
    return Intl.message(
      'Music',
      name: 'dialogTypeOfMatchbuttontextMusic',
      desc: '',
      args: [],
    );
  }

  /// `Job`
  String get dialogTypeOfMatchbuttontextjob {
    return Intl.message(
      'Job',
      name: 'dialogTypeOfMatchbuttontextjob',
      desc: '',
      args: [],
    );
  }

  /// `Number Of Teams`
  String get dialogTypeOfMatchNumberofteamsTitle {
    return Intl.message(
      'Number Of Teams',
      name: 'dialogTypeOfMatchNumberofteamsTitle',
      desc: '',
      args: [],
    );
  }

  /// `START `
  String get typeOfMatchScreansTitleScreans1 {
    return Intl.message(
      'START ',
      name: 'typeOfMatchScreansTitleScreans1',
      desc: '',
      args: [],
    );
  }

  /// `NEWGAME`
  String get typeOfMatchScreansTitleScreans2 {
    return Intl.message(
      'NEWGAME',
      name: 'typeOfMatchScreansTitleScreans2',
      desc: '',
      args: [],
    );
  }

  /// `Team 1`
  String get typeOfMatchScreansTextFiledInputTeam1 {
    return Intl.message(
      'Team 1',
      name: 'typeOfMatchScreansTextFiledInputTeam1',
      desc: '',
      args: [],
    );
  }

  /// `Team2`
  String get typeOfMatchScreansTextFiledInputTeam2 {
    return Intl.message(
      'Team2',
      name: 'typeOfMatchScreansTextFiledInputTeam2',
      desc: '',
      args: [],
    );
  }

  /// `Team3`
  String get typeOfMatchScreansTextFiledInputTeam3 {
    return Intl.message(
      'Team3',
      name: 'typeOfMatchScreansTextFiledInputTeam3',
      desc: '',
      args: [],
    );
  }

  /// `Team4`
  String get typeOfMatchScreansTextFiledInputTeam4 {
    return Intl.message(
      'Team4',
      name: 'typeOfMatchScreansTextFiledInputTeam4',
      desc: '',
      args: [],
    );
  }

  /// `TIME GAME`
  String get typeOfMatchScreansTextDetailButton {
    return Intl.message(
      'TIME GAME',
      name: 'typeOfMatchScreansTextDetailButton',
      desc: '',
      args: [],
    );
  }

  /// `AUTO`
  String get typeOfMatchScreansTextDetailNameButtonAUTO {
    return Intl.message(
      'AUTO',
      name: 'typeOfMatchScreansTextDetailNameButtonAUTO',
      desc: '',
      args: [],
    );
  }

  /// `CUSTOM`
  String get typeOfMatchScreansTextDetailNameButtonCUSTOM {
    return Intl.message(
      'CUSTOM',
      name: 'typeOfMatchScreansTextDetailNameButtonCUSTOM',
      desc: '',
      args: [],
    );
  }

  /// `To the difficulty of the word`
  String get typeOfMatchScreansTextDetailNameButtonAUTODetail {
    return Intl.message(
      'To the difficulty of the word',
      name: 'typeOfMatchScreansTextDetailNameButtonAUTODetail',
      desc: '',
      args: [],
    );
  }

  /// `Number of Rounds `
  String get typeOfMatchScreansTextDetailForNumberofRounds {
    return Intl.message(
      'Number of Rounds ',
      name: 'typeOfMatchScreansTextDetailForNumberofRounds',
      desc: '',
      args: [],
    );
  }

  /// `BACK PAGE`
  String get typeOfMatchScreansButtonBACKPAGE {
    return Intl.message(
      'BACK PAGE',
      name: 'typeOfMatchScreansButtonBACKPAGE',
      desc: '',
      args: [],
    );
  }

  /// `NEXT PAGE`
  String get typeOfMatchScreansButtonNextPage {
    return Intl.message(
      'NEXT PAGE',
      name: 'typeOfMatchScreansButtonNextPage',
      desc: '',
      args: [],
    );
  }

  /// `50 Seconds`
  String get timeForStartGame50Seconds {
    return Intl.message(
      '50 Seconds',
      name: 'timeForStartGame50Seconds',
      desc: '',
      args: [],
    );
  }

  /// `1 Minutes 20 Seconds`
  String get timeFOrStartGame1Min20Seconds {
    return Intl.message(
      '1 Minutes 20 Seconds',
      name: 'timeFOrStartGame1Min20Seconds',
      desc: '',
      args: [],
    );
  }

  /// `1 Minutes 50 Seconds`
  String get timeFOrStartGame1Min50Seconds {
    return Intl.message(
      '1 Minutes 50 Seconds',
      name: 'timeFOrStartGame1Min50Seconds',
      desc: '',
      args: [],
    );
  }

  /// `2 Minutes 20 Seconds`
  String get timeForStartGame2min20Seconds {
    return Intl.message(
      '2 Minutes 20 Seconds',
      name: 'timeForStartGame2min20Seconds',
      desc: '',
      args: [],
    );
  }

  /// `2 Minutes 50 Seconds`
  String get timeFOrStartGame2Min50Seconds {
    return Intl.message(
      '2 Minutes 50 Seconds',
      name: 'timeFOrStartGame2Min50Seconds',
      desc: '',
      args: [],
    );
  }

  /// `3 Minutes 20 Seconds`
  String get timeFOrStartGame3Min20Seconds {
    return Intl.message(
      '3 Minutes 20 Seconds',
      name: 'timeFOrStartGame3Min20Seconds',
      desc: '',
      args: [],
    );
  }

  /// `3 Minutes 50 Seconds`
  String get timeFOrStartGame3Min50Seconds {
    return Intl.message(
      '3 Minutes 50 Seconds',
      name: 'timeFOrStartGame3Min50Seconds',
      desc: '',
      args: [],
    );
  }

  /// `4 Minutes 20 Seconds`
  String get timeFOrStartGame4Min20Seconds {
    return Intl.message(
      '4 Minutes 20 Seconds',
      name: 'timeFOrStartGame4Min20Seconds',
      desc: '',
      args: [],
    );
  }

  /// `4 Minutes 50 Seconds`
  String get timeFOrStartGame4Min50Seconds {
    return Intl.message(
      '4 Minutes 50 Seconds',
      name: 'timeFOrStartGame4Min50Seconds',
      desc: '',
      args: [],
    );
  }

  /// `Name Teams`
  String get detailGameScreansForLunchNameTeam {
    return Intl.message(
      'Name Teams',
      name: 'detailGameScreansForLunchNameTeam',
      desc: '',
      args: [],
    );
  }

  /// `Score`
  String get detailGameScreansForLunchScore {
    return Intl.message(
      'Score',
      name: 'detailGameScreansForLunchScore',
      desc: '',
      args: [],
    );
  }

  /// `Rounds `
  String get detailGameScreansForLunchTitleTextRounds {
    return Intl.message(
      'Rounds ',
      name: 'detailGameScreansForLunchTitleTextRounds',
      desc: '',
      args: [],
    );
  }

  /// ` in `
  String get detailGameScreansForLunchTitleTextIn {
    return Intl.message(
      ' in ',
      name: 'detailGameScreansForLunchTitleTextIn',
      desc: '',
      args: [],
    );
  }

  /// `LETS GO !`
  String get detailGameScreansForLunchBtnNameLetsGo {
    return Intl.message(
      'LETS GO !',
      name: 'detailGameScreansForLunchBtnNameLetsGo',
      desc: '',
      args: [],
    );
  }

  /// `QUIT GAME`
  String get detailGameScreansForLunchBtnNameQuitGame {
    return Intl.message(
      'QUIT GAME',
      name: 'detailGameScreansForLunchBtnNameQuitGame',
      desc: '',
      args: [],
    );
  }

  /// `START`
  String get timeScreansbtnStart {
    return Intl.message(
      'START',
      name: 'timeScreansbtnStart',
      desc: '',
      args: [],
    );
  }

  /// `STOP`
  String get timeScreansbtnStop {
    return Intl.message(
      'STOP',
      name: 'timeScreansbtnStop',
      desc: '',
      args: [],
    );
  }

  /// `WRONG`
  String get timeScreansbtnWrong {
    return Intl.message(
      'WRONG',
      name: 'timeScreansbtnWrong',
      desc: '',
      args: [],
    );
  }

  /// `Time`
  String get timeSreansTimeTextTitle {
    return Intl.message(
      'Time',
      name: 'timeSreansTimeTextTitle',
      desc: '',
      args: [],
    );
  }

  /// `Are you sure quit this Game ?`
  String get dialogquittextTitleAreYourSureQuitgame {
    return Intl.message(
      'Are you sure quit this Game ?',
      name: 'dialogquittextTitleAreYourSureQuitgame',
      desc: '',
      args: [],
    );
  }

  /// `NO PLAYING`
  String get dialogquitbtnTextNoPlaying {
    return Intl.message(
      'NO PLAYING',
      name: 'dialogquitbtnTextNoPlaying',
      desc: '',
      args: [],
    );
  }

  /// `QUIT GAME`
  String get dialogquitQuitgame {
    return Intl.message(
      'QUIT GAME',
      name: 'dialogquitQuitgame',
      desc: '',
      args: [],
    );
  }

  /// `QUIT`
  String get dialogquitTitleTextquit1 {
    return Intl.message(
      'QUIT',
      name: 'dialogquitTitleTextquit1',
      desc: '',
      args: [],
    );
  }

  /// `GAME`
  String get dialogquitTitleTextgame2 {
    return Intl.message(
      'GAME',
      name: 'dialogquitTitleTextgame2',
      desc: '',
      args: [],
    );
  }

  /// `What `
  String get dialogwinorloseTextTextSpan1 {
    return Intl.message(
      'What ',
      name: 'dialogwinorloseTextTextSpan1',
      desc: '',
      args: [],
    );
  }

  /// `happened ?`
  String get dialogwinorloseTextTextSpan2 {
    return Intl.message(
      'happened ?',
      name: 'dialogwinorloseTextTextSpan2',
      desc: '',
      args: [],
    );
  }

  /// `TRUE`
  String get dialogwinorlosebtnNameTrue {
    return Intl.message(
      'TRUE',
      name: 'dialogwinorlosebtnNameTrue',
      desc: '',
      args: [],
    );
  }

  /// `FALSE`
  String get dialogwinorlosebtnNamefalse {
    return Intl.message(
      'FALSE',
      name: 'dialogwinorlosebtnNamefalse',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'fa'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
