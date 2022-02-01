import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:pantomim/generated/l10n.dart';
import 'package:pantomim/theme/constant.dart';

import 'package:pantomim/views/auth/meno_screans.dart';

import 'package:pantomim/views/dialog_screns/dialog_how_to_play.dart';

class HomeScreans extends StatelessWidget {
  const HomeScreans({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
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
                              style: Theme.of(context).textTheme.subtitle1),
                          TextSpan(
                              text: localApp.titleHomeScreans2,
                              style: Theme.of(context).textTheme.headline2)
                        ])),
                      ),
                    )
                  ])
                  // ignore: prefer_const_literals_to_create_immutables
                ]),
                SizedBox(
                  height: size.height * 0.12,
                ),
                Button_widget(
                  text: localApp.textButtonHomeScrens,
                  color: const Color(0xFF0D47A1),
                  ontap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => MenoScreans()));
                  },
                ),
                Button_widget(
                  color: Colors.transparent,
                  text: localApp.textButtonHowToPlayHomeScreans,
                  ontap: () {
                    showDialog(
                        context: context,
                        builder: (
                          context,
                        ) =>
                            const DialogHowToPlay());
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

class Button_widget extends StatelessWidget {
  final Color color;
  final Function()? ontap;
  final String text;
  // ignore: use_key_in_widget_constructors
  const Button_widget(
      {required this.color, required this.text, required this.ontap});
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return FadeInUp(
      duration: Duration(milliseconds: 1200),
      delay: Duration(microseconds: 1200),
      child: Padding(
        padding:
            const EdgeInsets.only(left: 30, right: 30, top: 10, bottom: 10),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: InkWell(
            onTap: ontap,
            child: Container(
              width: double.infinity,
              height: size.height * 0.10,
              color: color,
              child: Center(
                  child: Text(
                text,
                style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 16),
              )),
            ),
          ),
        ),
      ),
    );
  }
}
