import 'dart:async';

import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:pantomim/module/constans/constant.dart';
import 'package:pantomim/module/widgets/circle_button.dart';
import 'package:pantomim/provider/provider.dart';
import 'package:provider/provider.dart';

import '../../generated/l10n.dart';

import '../../module/canvas/menoscreans_painter.dart';
import '../dialog_screns/dialog_setting.dart';

import 'type_of_match_screans.dart';

class MenoScreans extends StatefulWidget {
  const MenoScreans({Key? key}) : super(key: key);

  @override
  _MenoScreans createState() => _MenoScreans();
}

class _MenoScreans extends State<MenoScreans> with TickerProviderStateMixin {
  late AnimationController firstRippleController;
  late AnimationController secondRippleController;
  late AnimationController thirdRippleController;
  late AnimationController centerCircleController;
  late Animation<double> firstRippleRadiusAnimation;
  late Animation<double> firstRippleOpacityAnimation;
  late Animation<double> firstRippleWidthAnimation;
  late Animation<double> secondRippleRadiusAnimation;
  late Animation<double> secondRippleOpacityAnimation;
  late Animation<double> secondRippleWidthAnimation;
  late Animation<double> thirdRippleRadiusAnimation;
  late Animation<double> thirdRippleOpacityAnimation;
  late Animation<double> thirdRippleWidthAnimation;
  late Animation<double> centerCircleRadiusAnimation;

  @override
  void initState() {
    firstRippleController = AnimationController(
      vsync: this,
      duration: const Duration(
        seconds: 4,
      ),
    );

    firstRippleRadiusAnimation = Tween<double>(begin: 0, end: 150).animate(
      CurvedAnimation(
        parent: firstRippleController,
        curve: Curves.ease,
      ),
    )
      ..addListener(() {
        setState(() {});
      })
      ..addStatusListener((status) {
        if (status == AnimationStatus.completed) {
          firstRippleController.repeat();
        } else if (status == AnimationStatus.dismissed) {
          firstRippleController.forward();
        }
      });

    firstRippleOpacityAnimation = Tween<double>(begin: 1, end: 0).animate(
      CurvedAnimation(
        parent: firstRippleController,
        curve: Curves.ease,
      ),
    )..addListener(
        () {
          setState(() {});
        },
      );

    firstRippleWidthAnimation = Tween<double>(begin: 10, end: 0).animate(
      CurvedAnimation(
        parent: firstRippleController,
        curve: Curves.ease,
      ),
    )..addListener(
        () {
          setState(() {});
        },
      );

    secondRippleController = AnimationController(
      vsync: this,
      duration: const Duration(
        seconds: 2,
      ),
    );

    secondRippleRadiusAnimation = Tween<double>(begin: 0, end: 150).animate(
      CurvedAnimation(
        parent: secondRippleController,
        curve: Curves.ease,
      ),
    )
      ..addListener(() {
        setState(() {});
      })
      ..addStatusListener((status) {
        if (status == AnimationStatus.completed) {
          secondRippleController.repeat();
        } else if (status == AnimationStatus.dismissed) {
          secondRippleController.forward();
        }
      });

    secondRippleOpacityAnimation = Tween<double>(begin: 1, end: 0).animate(
      CurvedAnimation(
        parent: secondRippleController,
        curve: Curves.ease,
      ),
    )..addListener(
        () {
          setState(() {});
        },
      );

    secondRippleWidthAnimation = Tween<double>(begin: 10, end: 0).animate(
      CurvedAnimation(
        parent: secondRippleController,
        curve: Curves.ease,
      ),
    )..addListener(
        () {
          setState(() {});
        },
      );

    thirdRippleController = AnimationController(
      vsync: this,
      duration: const Duration(
        seconds: 2,
      ),
    );

    thirdRippleRadiusAnimation = Tween<double>(begin: 0, end: 180).animate(
      CurvedAnimation(
        parent: thirdRippleController,
        curve: Curves.ease,
      ),
    )
      ..addListener(() {
        setState(() {});
      })
      ..addStatusListener((status) {
        if (status == AnimationStatus.completed) {
          thirdRippleController.repeat();
        } else if (status == AnimationStatus.dismissed) {
          thirdRippleController.forward();
        }
      });

    thirdRippleOpacityAnimation = Tween<double>(begin: 1, end: 0).animate(
      CurvedAnimation(
        parent: thirdRippleController,
        curve: Curves.ease,
      ),
    )..addListener(
        () {
          setState(() {});
        },
      );

    thirdRippleWidthAnimation = Tween<double>(begin: 10, end: 0).animate(
      CurvedAnimation(
        parent: thirdRippleController,
        curve: Curves.ease,
      ),
    )..addListener(
        () {
          setState(() {});
        },
      );

    centerCircleController =
        AnimationController(vsync: this, duration: const Duration(seconds: 1));

    centerCircleRadiusAnimation = Tween<double>(begin: 45, end: 70).animate(
      CurvedAnimation(
        parent: centerCircleController,
        curve: Curves.fastOutSlowIn,
      ),
    )
      ..addListener(
        () {
          setState(() {});
        },
      )
      ..addStatusListener(
        (status) {
          if (status == AnimationStatus.completed) {
            centerCircleController.reverse();
          } else if (status == AnimationStatus.dismissed) {
            centerCircleController.forward();
          }
        },
      );

    firstRippleController.forward();
    Timer(
      const Duration(milliseconds: 765),
      () => secondRippleController.forward(),
    );

    Timer(
      const Duration(milliseconds: 1050),
      () => thirdRippleController.forward(),
    );

    centerCircleController.forward();

    super.initState();
  }

  @override
  void dispose() {
    firstRippleController.dispose();
    secondRippleController.dispose();
    thirdRippleController.dispose();
    centerCircleController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    final modelProvider = Provider.of<AppProvider>(context);

    final size = MediaQuery.of(context).size;
    var localApp = S.of(context);

    return FadeInUp(
      duration: const Duration(milliseconds: 1200),
      delay: const Duration(microseconds: 1200),
      child: Container(
        decoration: backgroundDefaultScafold,
        child: Scaffold(
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerDocked,
          floatingActionButton: Padding(
            // ignore: prefer_const_constructors
            padding: EdgeInsets.only(
              bottom: Constans.padding,
            ),
            child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              CricleButton(
                iconColor: kwhite,
                iconData: Icons.settings,
                onTap: () {
                  showDialog(
                      context: context,
                      builder: (
                        context,
                      ) =>
                          const SettingDialog());
                },
                backgroundColor: kblue,
              ),
              const SizedBox(
                width: 80,
              ),
              CricleButton(
                iconData: Icons.restart_alt,
                iconColor: Colors.grey.shade500,
                onTap: () {},
                backgroundColor: kwhite.withOpacity(0.1),
              ),
            ]),
          ),
          backgroundColor: Colors.transparent,
          body: SafeArea(
              child: Stack(
                  clipBehavior: Clip.none,
                  alignment: Alignment.center,
                  children: <Widget>[
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                children: [
                                  Text(
                                    localApp.textTitleMenoScreans1,
                                    style: const TextStyle(
                                        color: Color(0xFF0D47A1),
                                        fontSize: 28,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  const SizedBox(
                                    width: 4,
                                  ),
                                  Text(
                                    localApp.textTitleMenoScreans2,
                                    style: const TextStyle(
                                        color: kwhite,
                                        fontSize: 28,
                                        fontWeight: FontWeight.bold),
                                  )
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 8, right: 8, top: 0),
                              child: Text(
                                localApp.textTitleMenoScreans3,
                                style: Theme.of(context)
                                    .primaryTextTheme
                                    .subtitle1,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: size.height * 0.30,
                  ),
                ]),
                CustomPaint(
                  foregroundPainter: MyPainter(
                    firstRippleRadiusAnimation.value,
                    firstRippleOpacityAnimation.value,
                    firstRippleWidthAnimation.value,
                    secondRippleRadiusAnimation.value,
                    secondRippleOpacityAnimation.value,
                    secondRippleWidthAnimation.value,
                    thirdRippleRadiusAnimation.value,
                    thirdRippleOpacityAnimation.value,
                    thirdRippleWidthAnimation.value,
                    centerCircleRadiusAnimation.value,
                  ),
                ),
                Positioned(
                    child: InkWell(
                      borderRadius: BorderRadius.circular(100),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const ChoiceYourTopic()));
                      },
                      child: const Icon(
                        Icons.play_arrow,
                        size: 50,
                        color: kblue,
                      ),
                    ),
                    width: size.width * 0.45,
                    height: size.height * 0.20),
              ])),
        ),
      ),
    );
  }
}
