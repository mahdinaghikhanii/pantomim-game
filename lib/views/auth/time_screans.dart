// ignore_for_file: prefer_const_constructors
import 'dart:async';
import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:pantomim/theme/constant.dart';
import 'package:pantomim/util/view_models/provider.dart';
import 'package:provider/provider.dart';

class TimerScreans extends StatefulWidget {
  @override
  State<TimerScreans> createState() => _TimerScreansState();
}

class _TimerScreansState extends State<TimerScreans> {
  Duration duration = Duration(seconds: 1);
  Timer? timer;
  bool isCountdown = true;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    //startTimer();

    reset();
  }

  void stopTimper({bool reseets = true}) {
    if (reseets) {
      reset();
    }
    setState(() {
      timer?.cancel();
    });
  }

  void addTime() {
    final addSeconds = isCountdown ? -1 : 1;
    setState(() {
      final seconds = duration.inSeconds + addSeconds;
      if (seconds < 0) {
        timer?.cancel();
      } else {
        duration = Duration(seconds: seconds);
      }
    });
  }

  void reset() {
    if (isCountdown) {
      setState(() {
        duration = Duration(minutes: 2);
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
    String twDigits(int n) => n.toString().padLeft(2, '0');
    final minutes = twDigits(duration.inMinutes.remainder(60));
    final seconds = twDigits(duration.inSeconds.remainder(60));

    final isCompelect = duration.inSeconds == 0;
    final isRounning = timer == null ? false : timer!.isActive;
    final modelProvider = Provider.of<AppProvider>(context);

    final size = MediaQuery.of(context).size;
    return Container(
      decoration: backgroundDefaultScafold,
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          actions: [
            Padding(
              padding: const EdgeInsets.only(
                  right: Constans.padding, top: 12, left: Constans.padding),
              child:
                  Text('4 Score', style: Theme.of(context).textTheme.bodyText1),
            )
          ],
        ),
        body: Container(
          padding: EdgeInsets.only(top: 80),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Center(
                child: Padding(
                    padding: const EdgeInsets.all(Constans.padding),
                    child: Text(
                      'apple',
                      style: Theme.of(context).textTheme.headline1,
                    )),
              ),
              const SizedBox(
                height: 90,
              ),
              Column(
                children: [
                  Text(
                    '$minutes:$seconds',
                    style: Theme.of(context).textTheme.headline3,
                  ),
                  Text(
                    'Time',
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
                              stopTimper();
                            } else {
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
                              isRounning ? "Stop" : "Start",
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
                          onTap: () {},
                          child: Container(
                            width: double.infinity,
                            height: size.height * 0.09,
                            color: Colors.transparent,
                            child: Center(
                                child: Text(
                              "WRONG",
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
              Container(),
            ],
          ),
        ),
      ),
    );
  }
}
