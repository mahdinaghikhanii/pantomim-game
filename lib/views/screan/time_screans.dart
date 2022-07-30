import 'dart:async';
import 'dart:math';

import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';
import 'package:provider/provider.dart';

import '../../generated/l10n.dart';
import '../../module/constans/constant.dart';
import '../../module/extension/extension.dart';
import '../../module/widgets/snackbar.dart';
import '../../provider/gametheme_provider.dart';
import '../../provider/team_provider.dart';
import '../dialog_screns/dialog_winorlose.dart';
import 'score_screans.dart';

class TimerScreans extends StatefulWidget {
  final int choicTopic;
  const TimerScreans({Key? key, required this.choicTopic}) : super(key: key);

  @override
  State<TimerScreans> createState() => _TimerScreansState();
}

class _TimerScreansState extends State<TimerScreans> {
  final player = AudioPlayer();
  Duration duration = const Duration();
  Timer? timer;
  bool isCountdown = true;
  bool wrong = false;
  bool check = false;

  @override
  void initState() {
    super.initState();
    //Stop and reset Audio and navigator Show Dialogs
    reset();
  }

  void stopTimper({bool reseets = true}) {
    if (reseets) {
      reset();
    }
    setState(() {
      player.stop();
      timer?.cancel();
      context.nextScreans(const ScoreScreans());
    });
  }

  void addTime() {
    final addSeconds = isCountdown ? -1 : 1;
    setState(() {
      final seconds = duration.inSeconds + addSeconds;
      if (seconds == 11) {
        context.playAudio('assets/audio/s.mp3');
      }
      if (seconds < 0 && wrong == false) {
        timer?.cancel();
        showDialog(
            barrierDismissible: false,
            context: context,
            builder: (
              context,
            ) =>
                const DialogWinOrLose());
      } else {
        duration = Duration(seconds: seconds);
      }
    });
  }

  void reset() {
    if (isCountdown) {
      setState(() {
        duration = const Duration(minutes: 0);
      });
    } else {
      setState(() {
        duration = const Duration();
      });
    }
  }

  void startTimer({bool resets = true}) {
    if (resets) {
      reset();
    }
    timer = Timer.periodic(const Duration(seconds: 1), (_) => addTime());
  }

  @override
  Widget build(BuildContext context) {
    final _random = Random();
    String twDigits(int n) => n.toString().padLeft(2, '0');
    final minutes = twDigits(duration.inMinutes.remainder(60));
    final seconds = twDigits(duration.inSeconds.remainder(60));
    // ignore: unused_local_variable
    final isCompelect = duration.inSeconds == 0;
    final isRounning = timer == null ? false : timer!.isActive;
    final modelProvider = Provider.of<TheThemeOfTheGame>(context);
    final teamProvider = Provider.of<TeamProvider>(context);
    var localApp = S.of(context);

    void starttopicgame() {
      switch (modelProvider.getnumberindex) {
        case 0:
          List _food = [
            "آش",
            "آبگوشت",
            "اشکنه",
            "کباب",
            "کوفته",
            "دلمه",
            "کتلت",
            "شامی",
            "کوکو",
            "خوراک",
            "چلو خورش",
            "اش رشته",
            "آش کشک",
            "آش ماست",
            "آش غوره",
            "آش گندم",
            "آش بلغور",
            "آش قلمکار ",
            "آش گوجه",
            "آش آلوچه",
            "آش انار",
            "آش اسفناج",
            "آش ترشی شمالی",
            "آش بادمجان",
            "آش اماج",
            "آش دندانی",
            "آش کارده شیرازی",
            "آش ترخینه یا سیرابی",
            "آش دوغ آذربایجانی",
            "آش مصفی شهرکردی",
            "آش آخورک کازرونی",
            "آبگوشت غوره",
            "آبگوشت دیزی",
            " آبگوشت",
            "اشکنه",
            "کباب کوبیده",
            "کباب برگ",
            "کباب بختیاری",
            "کباب وزیری",
            "کباب سلطانی",
            "کباب ترش",
            "کباب چنجه",
            "کباب قفقازی",
            "کباب شیشلیک",
            "جوجه کباب",
            "کباب کوبیده مرغ",
            "کباب ماهی تابه ای",
            "کباب ماهی صبور",
            "کباب فیله کبابی ماهی",
            "میگو کبابی",
            "کباب ماهی قزل آلا",
            "کباب ماهی اوزون برون",
            "کباب حسینی اصفهانی",
            "کباب جگرورز لری",
            "کباب دل و قلوه کبابی",
            "کوفته تبریزی",
            "کوفته سبزی شیرازی",
            "کوفته برنجی",
            "کلم پیچ",
            "مرغ",
            "کتلت گوشت",
            "کتلت مرغ",
            "کتلت گوشت و جعفری",
            "کتلت گوشت و آرد سوخاری",
            "کتلت ماهی با جعفری",
            "کتلت ماهی سالمون و سیب زمینی",
            "کتلت قارچ و اسفناج",
            "کتلت عدس",
            "کتلت نخود",
            "ترشه شامی گیلانی",
            "کوکو بادمجان",
            "کوکو سبزی",
            "کوکو مرغ و قارچ",
            "کوکو سیب زمینی",
            "کوکو کدو سبز",
            "کوکو گوشت",
            "کوکو دو رنگ",
            "کوکو سه رنگ",
            "کوکو تره فرنگی",
            "کوکو لوبیا سبز",
            "کوکو نخود فرنگی",
            "کوکو زردک",
            "کوکو باقالا",
            "کوکو مرغ و فلفل دلمه ای",
            "کوکو اسفناج",
            "کوکو مرغ و نخود فرنگی",
            "کوکو عدس",
            "کوکو گردو",
            "کوکو کدو و ریحان",
            "مافین و فلفل دلمه ای",
            "کوکو نخود فرنگی و کالباس",
            "خوراک ماهیچه",
            "جگر",
            "دل",
            "ماهی شکم پر",
            "ماهی کیلکا",
            "ماهی سوخاری",
            "ماهی شکم پر کنگانی",
            "ماهی دودی",
            "ماهی بخارپز",
            "مرغ و قارچ",
            "مرغ شکم",
            "مرغ سوخاری",
            " مرغ آب پز",
            "زرشک پلو",
            "آلبالو پلو",
            "پلو کنگر",
            "پلو گوشت ترکی",
            "رشته پلو",
            "پلو لوبیا چشم بلبلی",
            "عدس پلو",
            "خرما پلو",
            "هویج پلو",
            "سبزی پلو",
            "شوید پلو",
            "کلم پلو و کلم پلوی شیرازی",
            "ته چین مرغ",
            "شیرین پلو",
            "میگو پلو",
            "لوبیا پلو",
            "ماش پلو نورآبادی",
            "باقالی پلو",
            "پلو استانبولی",
            "پلو همدانی",
            "قیمه سیب زمینی",
            "خورشت قورمه سبزی",
            "خورشت بادمجان",
            "خورشت فسنجان با گوشت یا مرغ",
            "خورشت کرفس",
            "خورشت آلو",
            "خورشت کنگر",
            "خورشت به",
            "خورشت سیب ترش شیرازی",
            "خورشت بامیه",
            "خورشت اسفناج",
            "خورشت ریواس",
            "خورشت گیلانی",
            "خورشت قیمه آذربایجانی",
            "خورشت کدو",
            "میرزا قاسمی",
            "خورشت آجیلی عشایر بختیاری",
            "خورشت بریان بِهی کُردی",
            "جغول بغول شمالی",
            "خورشت چاقالا بادام شمالی",
            "کدو تنبل با ماش شیرازی",
            "خورشت کاری با مرغ",
            "خورشت مسما بادمجان",
            "خورشت قارچ",
            "خورشت قیمه ریزه با رب انار",
          ];

          modelProvider.topicgames(_food[_random.nextInt(_food.length)]);
          break;

        case 1:
          List _sport = ["ddjasdsa id isdsaidj ifjisud fudfu ishf"];
          modelProvider.topicgames(_sport[_random.nextInt(_sport.length)]);
          break;

        case 2:
          List _animal = [
            localApp.timescreansgamethemelistanimal0,
            localApp.timescreansgamethemelistanimal1,
            localApp.timescreansgamethemelistanimal2,
            localApp.timescreansgamethemelistanimal3,
            localApp.timescreansgamethemelistanimal4,
            localApp.timescreansgamethemelistanimal5,
            localApp.timescreansgamethemelistanimal6,
            localApp.timescreansgamethemelistanimal7,
            localApp.timescreansgamethemelistanimal8,
            localApp.timescreansgamethemelistanimal9,
            localApp.timescreansgamethemelistanimal10,
            localApp.timescreansgamethemelistanimal11,
            localApp.timescreansgamethemelistanimal12,
            localApp.timescreansgamethemelistanimal13,
            localApp.timescreansgamethemelistanimal14,
            localApp.timescreansgamethemelistanimal14,
            localApp.timescreansgamethemelistanimal15,
            localApp.timescreansgamethemelistanimal16,
            localApp.timescreansgamethemelistanimal17,
            localApp.timescreansgamethemelistanimal18,
            localApp.timescreansgamethemelistanimal19,
            localApp.timescreansgamethemelistanimal20,
          ];
          modelProvider.topicgames(_animal[_random.nextInt(_animal.length)]);
          break;
        case 3:
          List _movie = [
            localApp.timescreansgamethemelistmovi1,
            localApp.timescreansgamethemelistmovi2
          ];
          modelProvider.topicgames(_movie[_random.nextInt(_movie.length)]);
          break;
        case 4:
          List _thing = [
            localApp.timescreansgamethemelistthing1,
            localApp.timescreansgamethemelistthing2
          ];
          modelProvider.topicgames(_thing[_random.nextInt(_thing.length)]);
          break;
        case 5:
          List _thing = [
            localApp.timescreansgamethemelistthing1,
            localApp.timescreansgamethemelistthing2
          ];
          modelProvider.topicgames(_thing[_random.nextInt(_thing.length)]);
          break;

        case 6:
          List _general = [
            localApp.timescreansgamethemelistgeneral1,
            localApp.timescreansgamethemelistgeneral2
          ];
          modelProvider.topicgames(_general[_random.nextInt(_general.length)]);
          break;

        case 7:
          List _tourism = [
            localApp.timescreansgamethemelistTourism1,
            localApp.timescreansgamethemelistTourism2
          ];
          modelProvider.topicgames(_tourism[_random.nextInt(_tourism.length)]);
          break;
        case 8:
          List _jobs = [
            localApp.timescreansgamethemelistJobs1,
            localApp.timescreansgamethemelistJobs2
          ];
          modelProvider.topicgames(_jobs[_random.nextInt(_jobs.length)]);
          break;
        case 9:
          List _jobs = [
            localApp.timescreansgamethemelistjobs0,
            localApp.timescreansgamethemelistjobs1,
            localApp.timescreansgamethemelistjobs2,
            localApp.timescreansgamethemelistjobs3,
            localApp.timescreansgamethemelistjobs4,
            localApp.timescreansgamethemelistjobs5,
            localApp.timescreansgamethemelistjobs6,
            localApp.timescreansgamethemelistjobs7,
            localApp.timescreansgamethemelistjobs8,
            localApp.timescreansgamethemelistjobs9,
            localApp.timescreansgamethemelistjobs10,
            localApp.timescreansgamethemelistjobs11,
            localApp.timescreansgamethemelistjobs12,
            localApp.timescreansgamethemelistjobs13,
            localApp.timescreansgamethemelistjobs14,
            localApp.timescreansgamethemelistjobs15,
            localApp.timescreansgamethemelistjobs16,
            localApp.timescreansgamethemelistjobs17,
            localApp.timescreansgamethemelistjobs18,
            localApp.timescreansgamethemelistjobs19,
            localApp.timescreansgamethemelistjobs20
          ];
          modelProvider.topicgames(_jobs[_random.nextInt(_jobs.length)]);
          break;
        case 10:
          List _music = [
            localApp.timescreansgamethemelistMousic1,
            localApp.timescreansgamethemelistMousic2
          ];
          modelProvider.topicgames(_music[_random.nextInt(_music.length)]);
          break;
        case 11:
          List _tecnology = [
            localApp.timescreansgamethemelistTecnology1,
            localApp.timescreansgamethemelistTecnology2
          ];
          modelProvider
              .topicgames(_tecnology[_random.nextInt(_tecnology.length)]);
          break;

        default:
      }
    }

    final size = MediaQuery.of(context).size;
    return Container(
      decoration: backgroundDefaultScafold,
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        body: Container(
          padding: const EdgeInsets.only(top: 80),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              FadeInUp(
                duration: const Duration(milliseconds: 1200),
                delay: const Duration(microseconds: 1200),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20, right: 20),
                      child: Text(
                        modelProvider.gameTheme.toString(),
                        textAlign: TextAlign.center,
                        style: Theme.of(context).textTheme.headline1,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 90,
              ),
              FadeInUp(
                duration: const Duration(milliseconds: 1200),
                delay: const Duration(microseconds: 1200),
                child: Column(
                  children: [
                    Text(
                      '$minutes:$seconds',
                      style: Theme.of(context).textTheme.headline3,
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      localApp.timeSreansTimeTextTitle,
                      style: Theme.of(context).textTheme.bodyText1,
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                    FadeInUp(
                      duration: const Duration(milliseconds: 1200),
                      delay: const Duration(microseconds: 1200),
                      child: Padding(
                        padding: const EdgeInsets.only(
                            left: 30, right: 30, top: 10, bottom: 10),
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              border: Border.all(
                                  color: kblue.withOpacity(1), width: 3)),
                          child: InkWell(
                            borderRadius: BorderRadius.circular(20),
                            onTap: () {
                              if (isRounning) {
                                stopTimper();
                                setState(() {
                                  wrong = false;
                                });

                                if (wrong == false) {
                                  teamProvider.setScoreForAllTeam(
                                      modelProvider.gameTheme, 1);
                                  //    teamProvider.saveData();
                                  teamProvider.checkwinorlosegamebtn(true);
                                }
                              } else {
                                starttopicgame();
                                startTimer(resets: true);
                                setState(() {
                                  teamProvider.updateData();
                                  if (isCountdown) {
                                    switch (teamProvider.getTimeForMatch()) {
                                      case 0:
                                        modelProvider.gameTheme.toString().length ==
                                                1
                                            ? duration =
                                                const Duration(seconds: 50)
                                            : modelProvider.gameTheme
                                                        .toString()
                                                        .length ==
                                                    2
                                                ? duration =
                                                    const Duration(seconds: 50)
                                                : modelProvider.gameTheme
                                                            .toString()
                                                            .length ==
                                                        3
                                                    ? duration = const Duration(
                                                        seconds: 50)
                                                    : modelProvider.gameTheme
                                                                .toString()
                                                                .length ==
                                                            4
                                                        ? duration =
                                                            const Duration(
                                                                seconds: 50)
                                                        : modelProvider.gameTheme
                                                                    .toString()
                                                                    .length ==
                                                                5
                                                            ? duration =
                                                                const Duration(
                                                                    seconds: 70)
                                                            : modelProvider.gameTheme
                                                                        .toString()
                                                                        .length ==
                                                                    6
                                                                ? duration =
                                                                    const Duration(seconds: 70)
                                                                : modelProvider.gameTheme.toString().length == 7
                                                                    ? duration = const Duration(seconds: 70)
                                                                    : modelProvider.gameTheme.toString().length == 8
                                                                        ? duration = const Duration(seconds: 90)
                                                                        : modelProvider.gameTheme.toString().length > 9
                                                                            ? duration = const Duration(seconds: 150)
                                                                            : duration = const Duration(seconds: 150);

                                        break;
                                      case 1:
                                        duration = const Duration(
                                            minutes: 1, seconds: 20);
                                        break;
                                      case 2:
                                        duration = const Duration(
                                            minutes: 1, seconds: 50);
                                        break;
                                      case 3:
                                        duration = const Duration(
                                            minutes: 2, seconds: 20);
                                        break;
                                      case 4:
                                        duration = const Duration(
                                            minutes: 2, seconds: 50);
                                        break;
                                      case 5:
                                        duration = const Duration(
                                          minutes: 3,
                                          seconds: 20,
                                        );
                                        break;

                                      case 6:
                                        duration = const Duration(
                                            minutes: 3, seconds: 50);
                                        break;
                                      case 7:
                                        duration = const Duration(
                                            minutes: 4, seconds: 20);
                                        break;
                                      case 8:
                                        duration = const Duration(
                                            minutes: 4, seconds: 50);
                                        break;
                                    }
                                  }
                                });
                              }
                            },
                            child: Container(
                              width: double.infinity,
                              height: size.height * 0.09,
                              color: Colors.transparent.withOpacity(0.05),
                              child: Center(
                                  child: Text(
                                isRounning
                                    ? localApp.timeScreansbtnStop
                                    : localApp.timeScreansbtnStart,
                                style: const TextStyle(
                                    color: kblue,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16),
                              )),
                            ),
                          ),
                        ),
                      ),
                    ),
                    FadeInUp(
                      duration: const Duration(milliseconds: 1200),
                      delay: const Duration(microseconds: 1200),
                      child: Padding(
                        padding: const EdgeInsets.only(
                            left: 30, right: 30, top: 10, bottom: 10),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: InkWell(
                            highlightColor: Colors.red.withOpacity(0.8),
                            borderRadius: BorderRadius.circular(20),
                            onTap: () {
                              if (duration.inSeconds == 0) {
                                ScaffoldMessenger.of(context)
                                  ..hideCurrentSnackBar()
                                  ..showSnackBar(
                                    CustomSnackAlert.showErrorSnackBar(
                                      "لطفا بازی را شروع کنید !",
                                    ),
                                  );
                              } else {
                                teamProvider.subtractioScore();
                                context.playAudio('assets/audio/wrong.wav');

                                if (teamProvider.getwrongScore == 3) {
                                  ScaffoldMessenger.of(context)
                                    ..hideCurrentSnackBar()
                                    ..showSnackBar(
                                      CustomSnackAlert.showErrorSnackBar(
                                          "شما بیش از ۳ خطا داشتید !"),
                                    );
                                  stopTimper();
                                  reset();
                                  if (wrong == true) {
                                    teamProvider.setaddcheckforInnigns();
                                    teamProvider.checkwinorlosegamebtn(false);

                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const ScoreScreans()));
                                  }
                                }

                                setState(() {
                                  wrong = true;
                                });
                              }
                            },
                            child: Container(
                              width: double.infinity,
                              height: size.height * 0.09,
                              color: Colors.transparent,
                              child: Center(
                                  child: Text(
                                localApp.timeScreansbtnWrong,
                                style: const TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16),
                              )),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
