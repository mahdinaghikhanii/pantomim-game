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

  /// `YOU `
  String get scoreScreansTitleTextTextSpanYou {
    return Intl.message(
      'YOU ',
      name: 'scoreScreansTitleTextTextSpanYou',
      desc: '',
      args: [],
    );
  }

  /// `WON`
  String get scoreScreansTitleTextTextSpanWon {
    return Intl.message(
      'WON',
      name: 'scoreScreansTitleTextTextSpanWon',
      desc: '',
      args: [],
    );
  }

  /// `LOST`
  String get scoreScreansTitleTextTextSpanLost {
    return Intl.message(
      'LOST',
      name: 'scoreScreansTitleTextTextSpanLost',
      desc: '',
      args: [],
    );
  }

  /// `OK`
  String get scoreScreansBtnText {
    return Intl.message(
      'OK',
      name: 'scoreScreansBtnText',
      desc: '',
      args: [],
    );
  }

  /// `Choose `
  String get dialogChoiceYourScreansTextTileChoose {
    return Intl.message(
      'Choose ',
      name: 'dialogChoiceYourScreansTextTileChoose',
      desc: '',
      args: [],
    );
  }

  /// `Topic`
  String get dialogChoiceYourScreansTextTileTopic {
    return Intl.message(
      'Topic',
      name: 'dialogChoiceYourScreansTextTileTopic',
      desc: '',
      args: [],
    );
  }

  /// `LET'S GO !`
  String get timescreanstitletext {
    return Intl.message(
      'LET\'S GO !',
      name: 'timescreanstitletext',
      desc: '',
      args: [],
    );
  }

  /// `Kashke bademjan`
  String get timescreansgamethemelistfoodtext0 {
    return Intl.message(
      'Kashke bademjan',
      name: 'timescreansgamethemelistfoodtext0',
      desc: '',
      args: [],
    );
  }

  /// `Kufteh tabrizi`
  String get timescreansgamethemelistfoodtext1 {
    return Intl.message(
      'Kufteh tabrizi',
      name: 'timescreansgamethemelistfoodtext1',
      desc: '',
      args: [],
    );
  }

  /// `Sholeh zard`
  String get timescreansgamethemelistfoodtext2 {
    return Intl.message(
      'Sholeh zard',
      name: 'timescreansgamethemelistfoodtext2',
      desc: '',
      args: [],
    );
  }

  /// `Kuku sabzi`
  String get timescreansgamethemelistfoodtext3 {
    return Intl.message(
      'Kuku sabzi',
      name: 'timescreansgamethemelistfoodtext3',
      desc: '',
      args: [],
    );
  }

  /// `Kabab`
  String get timescreansgamethemelistfoodtext4 {
    return Intl.message(
      'Kabab',
      name: 'timescreansgamethemelistfoodtext4',
      desc: '',
      args: [],
    );
  }

  /// `Apple Pie`
  String get timescreansgamethemelistfoodtext5 {
    return Intl.message(
      'Apple Pie',
      name: 'timescreansgamethemelistfoodtext5',
      desc: '',
      args: [],
    );
  }

  /// `Hamburger`
  String get timescreansgamethemelistfoodtext6 {
    return Intl.message(
      'Hamburger',
      name: 'timescreansgamethemelistfoodtext6',
      desc: '',
      args: [],
    );
  }

  /// `Clam Chowder`
  String get timescreansgamethemelistfoodtext7 {
    return Intl.message(
      'Clam Chowder',
      name: 'timescreansgamethemelistfoodtext7',
      desc: '',
      args: [],
    );
  }

  /// `Car shop`
  String get timescreansgamethemelistjobs0 {
    return Intl.message(
      'Car shop',
      name: 'timescreansgamethemelistjobs0',
      desc: '',
      args: [],
    );
  }

  /// `Cabinet making `
  String get timescreansgamethemelistjobs1 {
    return Intl.message(
      'Cabinet making ',
      name: 'timescreansgamethemelistjobs1',
      desc: '',
      args: [],
    );
  }

  /// `tower construction`
  String get timescreansgamethemelistjobs2 {
    return Intl.message(
      'tower construction',
      name: 'timescreansgamethemelistjobs2',
      desc: '',
      args: [],
    );
  }

  /// `Florist`
  String get timescreansgamethemelistjobs3 {
    return Intl.message(
      'Florist',
      name: 'timescreansgamethemelistjobs3',
      desc: '',
      args: [],
    );
  }

  /// `supermarket`
  String get timescreansgamethemelistjobs4 {
    return Intl.message(
      'supermarket',
      name: 'timescreansgamethemelistjobs4',
      desc: '',
      args: [],
    );
  }

  /// `Car rental`
  String get timescreansgamethemelistjobs5 {
    return Intl.message(
      'Car rental',
      name: 'timescreansgamethemelistjobs5',
      desc: '',
      args: [],
    );
  }

  /// `Jewelry`
  String get timescreansgamethemelistjobs6 {
    return Intl.message(
      'Jewelry',
      name: 'timescreansgamethemelistjobs6',
      desc: '',
      args: [],
    );
  }

  /// `Cigarette shop`
  String get timescreansgamethemelistjobs7 {
    return Intl.message(
      'Cigarette shop',
      name: 'timescreansgamethemelistjobs7',
      desc: '',
      args: [],
    );
  }

  /// `Teacher`
  String get timescreansgamethemelistjobs8 {
    return Intl.message(
      'Teacher',
      name: 'timescreansgamethemelistjobs8',
      desc: '',
      args: [],
    );
  }

  /// `Site designer`
  String get timescreansgamethemelistjobs9 {
    return Intl.message(
      'Site designer',
      name: 'timescreansgamethemelistjobs9',
      desc: '',
      args: [],
    );
  }

  /// `ProGramer`
  String get timescreansgamethemelistjobs10 {
    return Intl.message(
      'ProGramer',
      name: 'timescreansgamethemelistjobs10',
      desc: '',
      args: [],
    );
  }

  /// `Studio`
  String get timescreansgamethemelistjobs11 {
    return Intl.message(
      'Studio',
      name: 'timescreansgamethemelistjobs11',
      desc: '',
      args: [],
    );
  }

  /// `Art workshop`
  String get timescreansgamethemelistjobs12 {
    return Intl.message(
      'Art workshop',
      name: 'timescreansgamethemelistjobs12',
      desc: '',
      args: [],
    );
  }

  /// `Manual worker`
  String get timescreansgamethemelistjobs13 {
    return Intl.message(
      'Manual worker',
      name: 'timescreansgamethemelistjobs13',
      desc: '',
      args: [],
    );
  }

  /// `Agriculture`
  String get timescreansgamethemelistjobs14 {
    return Intl.message(
      'Agriculture',
      name: 'timescreansgamethemelistjobs14',
      desc: '',
      args: [],
    );
  }

  /// `Mechanical`
  String get timescreansgamethemelistjobs15 {
    return Intl.message(
      'Mechanical',
      name: 'timescreansgamethemelistjobs15',
      desc: '',
      args: [],
    );
  }

  /// `Librarian`
  String get timescreansgamethemelistjobs16 {
    return Intl.message(
      'Librarian',
      name: 'timescreansgamethemelistjobs16',
      desc: '',
      args: [],
    );
  }

  /// `Publisher `
  String get timescreansgamethemelistjobs17 {
    return Intl.message(
      'Publisher ',
      name: 'timescreansgamethemelistjobs17',
      desc: '',
      args: [],
    );
  }

  /// `Betting broker `
  String get timescreansgamethemelistjobs18 {
    return Intl.message(
      'Betting broker ',
      name: 'timescreansgamethemelistjobs18',
      desc: '',
      args: [],
    );
  }

  /// `Mobile store`
  String get timescreansgamethemelistjobs19 {
    return Intl.message(
      'Mobile store',
      name: 'timescreansgamethemelistjobs19',
      desc: '',
      args: [],
    );
  }

  /// `Bakery`
  String get timescreansgamethemelistjobs20 {
    return Intl.message(
      'Bakery',
      name: 'timescreansgamethemelistjobs20',
      desc: '',
      args: [],
    );
  }

  /// `Leopard`
  String get timescreansgamethemelistanimal0 {
    return Intl.message(
      'Leopard',
      name: 'timescreansgamethemelistanimal0',
      desc: '',
      args: [],
    );
  }

  /// `Snake`
  String get timescreansgamethemelistanimal1 {
    return Intl.message(
      'Snake',
      name: 'timescreansgamethemelistanimal1',
      desc: '',
      args: [],
    );
  }

  /// `Ant`
  String get timescreansgamethemelistanimal2 {
    return Intl.message(
      'Ant',
      name: 'timescreansgamethemelistanimal2',
      desc: '',
      args: [],
    );
  }

  /// `cow`
  String get timescreansgamethemelistanimal3 {
    return Intl.message(
      'cow',
      name: 'timescreansgamethemelistanimal3',
      desc: '',
      args: [],
    );
  }

  /// `Chicken`
  String get timescreansgamethemelistanimal4 {
    return Intl.message(
      'Chicken',
      name: 'timescreansgamethemelistanimal4',
      desc: '',
      args: [],
    );
  }

  /// `Lion`
  String get timescreansgamethemelistanimal5 {
    return Intl.message(
      'Lion',
      name: 'timescreansgamethemelistanimal5',
      desc: '',
      args: [],
    );
  }

  /// `Leopard`
  String get timescreansgamethemelistanimal6 {
    return Intl.message(
      'Leopard',
      name: 'timescreansgamethemelistanimal6',
      desc: '',
      args: [],
    );
  }

  /// `Beetle`
  String get timescreansgamethemelistanimal7 {
    return Intl.message(
      'Beetle',
      name: 'timescreansgamethemelistanimal7',
      desc: '',
      args: [],
    );
  }

  /// `Crab`
  String get timescreansgamethemelistanimal8 {
    return Intl.message(
      'Crab',
      name: 'timescreansgamethemelistanimal8',
      desc: '',
      args: [],
    );
  }

  /// `Octopus`
  String get timescreansgamethemelistanimal9 {
    return Intl.message(
      'Octopus',
      name: 'timescreansgamethemelistanimal9',
      desc: '',
      args: [],
    );
  }

  /// `Eagle`
  String get timescreansgamethemelistanimal10 {
    return Intl.message(
      'Eagle',
      name: 'timescreansgamethemelistanimal10',
      desc: '',
      args: [],
    );
  }

  /// `vulture`
  String get timescreansgamethemelistanimal11 {
    return Intl.message(
      'vulture',
      name: 'timescreansgamethemelistanimal11',
      desc: '',
      args: [],
    );
  }

  /// `Rhino`
  String get timescreansgamethemelistanimal12 {
    return Intl.message(
      'Rhino',
      name: 'timescreansgamethemelistanimal12',
      desc: '',
      args: [],
    );
  }

  /// `Spider`
  String get timescreansgamethemelistanimal13 {
    return Intl.message(
      'Spider',
      name: 'timescreansgamethemelistanimal13',
      desc: '',
      args: [],
    );
  }

  /// `Giraffe`
  String get timescreansgamethemelistanimal14 {
    return Intl.message(
      'Giraffe',
      name: 'timescreansgamethemelistanimal14',
      desc: '',
      args: [],
    );
  }

  /// `Camel`
  String get timescreansgamethemelistanimal15 {
    return Intl.message(
      'Camel',
      name: 'timescreansgamethemelistanimal15',
      desc: '',
      args: [],
    );
  }

  /// `Donkey`
  String get timescreansgamethemelistanimal16 {
    return Intl.message(
      'Donkey',
      name: 'timescreansgamethemelistanimal16',
      desc: '',
      args: [],
    );
  }

  /// `Ostrich`
  String get timescreansgamethemelistanimal17 {
    return Intl.message(
      'Ostrich',
      name: 'timescreansgamethemelistanimal17',
      desc: '',
      args: [],
    );
  }

  /// `Ant Eater`
  String get timescreansgamethemelistanimal18 {
    return Intl.message(
      'Ant Eater',
      name: 'timescreansgamethemelistanimal18',
      desc: '',
      args: [],
    );
  }

  /// `Duck`
  String get timescreansgamethemelistanimal19 {
    return Intl.message(
      'Duck',
      name: 'timescreansgamethemelistanimal19',
      desc: '',
      args: [],
    );
  }

  /// `earthworm`
  String get timescreansgamethemelistanimal20 {
    return Intl.message(
      'earthworm',
      name: 'timescreansgamethemelistanimal20',
      desc: '',
      args: [],
    );
  }

  /// `Iran`
  String get timescreansgamethemelistCountry1 {
    return Intl.message(
      'Iran',
      name: 'timescreansgamethemelistCountry1',
      desc: '',
      args: [],
    );
  }

  /// `USA`
  String get timescreansgamethemelistCountry2 {
    return Intl.message(
      'USA',
      name: 'timescreansgamethemelistCountry2',
      desc: '',
      args: [],
    );
  }

  /// `Germeny`
  String get timescreansgamethemelistCountry3 {
    return Intl.message(
      'Germeny',
      name: 'timescreansgamethemelistCountry3',
      desc: '',
      args: [],
    );
  }

  /// `English`
  String get timescreansgamethemelistCountry4 {
    return Intl.message(
      'English',
      name: 'timescreansgamethemelistCountry4',
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
