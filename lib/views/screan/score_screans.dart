import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../generated/l10n.dart';
import '../../models/particle.dart';
import '../../module/canvas/win_lose_painter.dart';
import '../../module/constans/constant.dart';
import '../../module/extension/extension.dart';
import '../../module/widgets/double_floatingac_button.dart';
import '../../module/widgets/scoreshowtext_textdetail.dart';
import '../../provider/team_provider.dart';
import '../dialog_screns/dialog_finishid.dart';
import 'detail_game_screans_for_lunch.dart';

class ScoreScreans extends StatefulWidget {
  const ScoreScreans({Key? key}) : super(key: key);

  @override
  _ScoreScreansState createState() => _ScoreScreansState();
}

class _ScoreScreansState extends State<ScoreScreans>
    with SingleTickerProviderStateMixin {
  late Animation<double> animation;
  late AnimationController controller;
  List<Particle> particles = [];

  //this items for animations  createa random size
  //and color Randoms

  genereteListOfParticles() {
    int numberOfParticles = 200;
    for (int i = 0; i < numberOfParticles; i++) {
      double randomSize = math.Random().nextDouble() * 20;
      int randomR = math.Random().nextInt(256);
      int randomG = math.Random().nextInt(256);
      int randomB = math.Random().nextInt(256);

      Color randomColor = Color.fromARGB(255, randomR, randomG, randomB);
      double thetaRandom = math.Random().nextDouble() * (2 * math.pi);

      double radiusRandom = math.Random().nextDouble() * 100 + 20;

      Particle particle = Particle(
          size: randomSize,
          color: randomColor,
          startingTheta: thetaRandom,
          radius: radiusRandom);
      particles.add(particle);
    }
  }

  void check() {
    final modelProvier = Provider.of<TeamProvider>(context);
    if (modelProvier.visibilityTeam1Icon == true) {
      modelProvier.getCounterOfScoreTeam1().toString();
    }
  }

  @override
  void initState() {
    super.initState();
    genereteListOfParticles();

    controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 8),
    );
    Tween<double> _rotationTween = Tween(begin: 0, end: 2 * math.pi);
    animation = _rotationTween.animate(controller)
      ..addListener(() {
        setState(() {});
      })
      ..addStatusListener((status) {
        if (status == AnimationStatus.completed) {
          controller.reverse();
        } else if (status == AnimationStatus.dismissed) {
          controller.forward();
        }
      });

    controller.repeat(max: 1);

    controller.forward();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    var localApp = S.of(context);
    final modelProvier = Provider.of<TeamProvider>(context);

    return WillPopScope(
      onWillPop: () async {
        ScaffoldMessenger.of(context);

        return false;
      },
      child: Container(
        decoration: modelProvier.checkbtnwinlose
            ? backgroundDefaultScafold
            : backgroundDefaultScafoldfalseGameStyle,
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: CustomPaint(
            painter: MyPainter(particles: particles, theta: animation.value),
            child: Center(
              child: SafeArea(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: size.width * 0.70,
                      height: size.height * 0.10,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30)),
                      child: RichText(
                          textAlign: TextAlign.center,
                          text: TextSpan(children: [
                            TextSpan(
                                text: localApp.scoreScreansTitleTextTextSpanYou,
                                style: modelProvier.checkbtnwinlose
                                    ? Theme.of(context).textTheme.headline1
                                    : styleTextForScoreTextLost),
                            TextSpan(
                                text: modelProvier.checkbtnwinlose
                                    ? localApp.scoreScreansTitleTextTextSpanWon
                                    : localApp
                                        .scoreScreansTitleTextTextSpanLost,
                                style: Theme.of(context).textTheme.subtitle1)
                          ])),
                    ),
                    Container(
                      padding: const EdgeInsets.all(20),
                      width: size.width * 0.83,
                      height: size.height * 0.52,
                      decoration: BoxDecoration(
                          color: Colors.white24,
                          borderRadius: BorderRadius.circular(50)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Center(
                              child: Text(
                            modelProvier.seeGroupNameTeam().toString(),
                            style: Theme.of(context).textTheme.headline6,
                          )),
                          const WidgetShowTextWinOrLoseDetail(
                            title: 'امتیاز این دست :',
                            score: '2',
                          ),
                          WidgetShowTextWinOrLoseDetail(
                            title: 'امتیاز کل تیم :',
                            score: modelProvier
                                .getCounterOfScoreTeam1()
                                .toString(),
                          ),
                          const WidgetShowTextWinOrLoseDetail(
                            title: 'گزارش خطا‌ :',
                            score: '0',
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 30, bottom: 10),
                            child: Center(
                              child: DounleFloattingButton(
                                colorBtn:
                                    modelProvier.checkbtnwinlose ? kblue : kred,
                                ontap: () {
                                  if (modelProvier.getcheckforInnigns >
                                      modelProvier.getNumberOfTeams()) {
                                    showDialog(
                                        context: context,
                                        builder: (
                                          context,
                                        ) =>
                                            const DialogFinishidGame());
                                  } else {
                                    if (modelProvier.checkbtnwinlose == true) {
                                      modelProvier.setaddcheckforInnigns();
                                    } else {}

                                    Navigator.push(
                                        (context),
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const DetailGameScreans()));
                                    if (modelProvier.getcheckforInnigns >
                                        modelProvier.getNumberOfTeams()) {
                                      context
                                          .playAudio('assets/audio/clap.wav');

                                      showDialog(
                                          barrierDismissible: false,
                                          context: context,
                                          builder: (
                                            context,
                                          ) =>
                                              const DialogFinishidGame());
                                    }
                                  }
                                },
                                textBtn: localApp.scoreScreansBtnText,
                                highlightColor: kblue,
                              ),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
