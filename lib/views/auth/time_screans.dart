// ignore_for_file: prefer_const_constructors
import 'dart:async';
import 'dart:math';
import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';
import 'package:pantomim/generated/l10n.dart';
import 'package:pantomim/theme/constant.dart';
import 'package:pantomim/util/view_models/provider/provider.dart';
import 'package:pantomim/views/dialog_screns/dialog_winorlose.dart';
import 'package:provider/provider.dart';

class TimerScreans extends StatefulWidget {
  const TimerScreans({Key? key}) : super(key: key);

  @override
  State<TimerScreans> createState() => _TimerScreansState();
}

class _TimerScreansState extends State<TimerScreans> {
  final player = AudioPlayer();

  Duration duration = Duration();
  Timer? timer;
  bool isCountdown = true;

  @override
  void initState() {
    super.initState();
    //startTimer();

    reset();
  }

// This section warns you that you have 10 seconds
  void playSong() async {
    // ignore: unused_local_variable
    var alarm = await player.setAsset('assets/audio/s.mp3');
    await player.play();
  }

  void playWrong() async {
    final wrong = AudioPlayer();
    // ignore: unused_local_variable
    var alarm = await wrong.setAsset('assets/audio/wrong.wav');
    await wrong.play();
    await wrong.setVolume(0.1);
  }

  void stopTimper({bool reseets = true}) {
    if (reseets) {
      reset();
    }
    setState(() {
      player.stop();
      timer?.cancel();
      showDialog(
          barrierDismissible: false,
          context: context,
          builder: (
            context,
          ) =>
              const DialogWinOrLose());
    });
  }

  void addTime() {
    final addSeconds = isCountdown ? -1 : 1;
    setState(() {
      final seconds = duration.inSeconds + addSeconds;
      if (seconds == 11) {
        playSong();
      }
      if (seconds < 0) {
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
        duration = Duration(minutes: 0);
      });
    } else {
      setState(() {
        duration = Duration();
      });
    }
  }

  void startTimer({bool resets = true}) {
    if (resets) {
      reset();
    }
    timer = Timer.periodic(Duration(seconds: 1), (_) => addTime());
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
    final modelProvider = Provider.of<AppProvider>(context);
    var localApp = S.of(context);

    void reasetgame() {
      modelProvider.topicgames(localApp.timescreanstitletext);
    }

    void starttopicgame() {
      switch (modelProvider.getnumberindex) {
        case 0:
          List _food = [
            localApp.timescreansgamethemelistfoodtext0,
            localApp.timescreansgamethemelistfoodtext1,
            localApp.timescreansgamethemelistfoodtext2,
            localApp.timescreansgamethemelistfoodtext3,
            localApp.timescreansgamethemelistfoodtext4,
            localApp.timescreansgamethemelistfoodtext5,
            localApp.timescreansgamethemelistfoodtext6,
            localApp.timescreansgamethemelistfoodtext7,
          ];
          modelProvider.topicgames(_food[_random.nextInt(_food.length)]);
          break;

        case 1:
          List _sport = [
            'fotbaldsjds  dsdaskjk dsj sdsdjk',
          ];
          modelProvider.topicgames(_sport[_random.nextInt(_sport.length)]);
          break;

        case 3:
          List _animal = ['ss', 'bb', 'dasdsa', 'dmsakdas', 'adsads'];
          modelProvider.topicgames(_animal[_random.nextInt(_animal.length)]);
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
          padding: EdgeInsets.only(top: 80),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              FadeInUp(
                duration: Duration(milliseconds: 1200),
                delay: Duration(microseconds: 1200),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20, right: 20),
                      child: Text(
                        modelProvider.gameTheme.toString(),
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
                duration: Duration(milliseconds: 1200),
                delay: Duration(microseconds: 1200),
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
                      duration: Duration(milliseconds: 1200),
                      delay: Duration(microseconds: 1200),
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
                                reasetgame();
                                stopTimper();
                              } else {
                                starttopicgame();
                                startTimer(resets: true);
                                setState(() {
                                  if (isCountdown) {
                                    switch (modelProvider.getTimeForMatch()) {
                                      case 0:
                                        duration = Duration(seconds: 50);
                                        break;
                                      case 1:
                                        duration =
                                            Duration(minutes: 1, seconds: 20);
                                        break;
                                      case 2:
                                        duration =
                                            Duration(minutes: 1, seconds: 50);
                                        break;
                                      case 3:
                                        duration =
                                            Duration(minutes: 2, seconds: 20);
                                        break;
                                      case 4:
                                        duration =
                                            Duration(minutes: 2, seconds: 50);
                                        break;
                                      case 5:
                                        duration = Duration(
                                          minutes: 3,
                                          seconds: 20,
                                        );
                                        break;

                                      case 6:
                                        duration =
                                            Duration(minutes: 3, seconds: 50);
                                        break;
                                      case 7:
                                        duration =
                                            Duration(minutes: 4, seconds: 20);
                                        break;
                                      case 8:
                                        duration =
                                            Duration(minutes: 4, seconds: 50);
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
                                style: TextStyle(
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
                      duration: Duration(milliseconds: 1200),
                      delay: Duration(microseconds: 1200),
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
                              } else {
                                playWrong();
                                modelProvider.subtractioScore();
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
