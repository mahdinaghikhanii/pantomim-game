import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

import '../../generated/l10n.dart';
import '../../module/constans/constant.dart';
import '../../module/widgets/small_button.dart';
import '../dialog_screns/dialog_how_to_play.dart';
import 'meno_screans.dart';

class HomeScreans extends StatelessWidget {
  const HomeScreans({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    var localApp = S.of(context);

    return Container(
      decoration: backgroundDefaultScafold,
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SafeArea(
          child: SizedBox(
            width: double.infinity,
            height: size.height,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                FadeInUp(
                  duration: const Duration(milliseconds: 1200),
                  delay: const Duration(microseconds: 1200),
                  child: Center(
                    child: Image.asset(
                      'assets/images/frinds1.png',
                      width: size.width,
                      height: size.height * 0.40,
                    ),
                  ),
                ),
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  Row(children: [
                    FadeInUp(
                      duration: const Duration(milliseconds: 1200),
                      delay: const Duration(microseconds: 1200),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 30, right: 30),
                        child: RichText(
                            text: TextSpan(children: [
                          TextSpan(
                              text: localApp.titleHomeScreans1,
                              style: Theme.of(context).textTheme.headline1),
                          TextSpan(
                              text: localApp.titleHomeScreans2,
                              style: Theme.of(context).textTheme.subtitle1)
                        ])),
                      ),
                    )
                  ])
                ]),
                SizedBox(height: size.height * 0.11),
                SmallButton(
                  text: localApp.textButtonHomeScrens,
                  color: const Color(0xFF0D47A1),
                  ontap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const MenoScreans()));
                  },
                ),
                SmallButton(
                  color: Colors.transparent,
                  text: localApp.textButtonHowToPlayHomeScreans,
                  ontap: () {
                    showDialog(
                        context: context,
                        builder: (context) => const DialogHowToPlay());
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
