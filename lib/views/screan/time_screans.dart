import 'dart:async';
import 'dart:math';

import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';
import 'package:pantomim/module/constans/constant.dart';
import 'package:provider/provider.dart';

import '../../generated/l10n.dart';
import '../../module/extension/extension.dart';
import '../../provider/provider.dart';
import '../dialog_screns/dialog_winorlose.dart';

class TimerScreans extends StatefulWidget {
  const TimerScreans({Key? key}) : super(key: key);

  @override
  State<TimerScreans> createState() => _TimerScreansState();
}

class _TimerScreansState extends State<TimerScreans> {
  final player = AudioPlayer();
  Duration duration = const Duration();
  Timer? timer;
  bool isCountdown = true;

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
      context.showDialogs(const DialogWinOrLose(), false);
    });
  }

  void addTime() {
    final addSeconds = isCountdown ? -1 : 1;
    setState(() {
      final seconds = duration.inSeconds + addSeconds;
      if (seconds == 11) {
        //This section warns you that you have 10 seconds
        context.playAudio('assets/audio/wrong.wav');
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
            localApp.timescreansgamethemelistSport1,
            localApp.timescreansgamethemelistSport2
          ];
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
                                reasetgame();
                                stopTimper();
                              } else {
                                starttopicgame();
                                startTimer(resets: true);
                                setState(() {
                                  if (isCountdown) {
                                    switch (modelProvider.getTimeForMatch()) {
                                      case 0:
                                        duration = const Duration(seconds: 50);
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
                              } else {
                                context.playAudio('assets/audio/wrong.wav');
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