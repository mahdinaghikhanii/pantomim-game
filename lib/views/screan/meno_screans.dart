import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:pantomim/module/widgets/icon_animation_backgame.dart';

import '../../generated/l10n.dart';
import '../../module/constans/constant.dart';
import '../../module/widgets/circle_button.dart';
import '../../module/widgets/icon_animation_play.dart';
import '../dialog_screns/dialog_setting.dart';
import 'type_of_match_screans.dart';

class MenoScreans extends StatelessWidget {
  const MenoScreans({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
              padding: const EdgeInsets.only(
                bottom: Constans.padding,
              ),
              child: Stack(alignment: Alignment.center, children: [
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
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
                      const IconAnimationBackGame(),
                    ]),
                const Positioned(
                    right: 260,
                    bottom: 0,
                    top: 60,
                    width: 160,
                    child: Text("برگشتن به بازی ")),
                Positioned(
                    left: 76,
                    child: InkWell(
                      borderRadius: BorderRadius.circular(100),
                      onTap: () {},
                      child: const Icon(
                        Icons.refresh_sharp,
                        size: 50,
                        color: kwhite,
                      ),
                    ),
                    width: 80,
                    height: 80),
              ])),
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
                const IconAnimation(),
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
