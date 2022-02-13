import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:pantomim/generated/l10n.dart';
import 'package:pantomim/theme/constant.dart';
import 'package:pantomim/views/dialog_screns/animation_play.dart';
import 'package:pantomim/views/auth/type_of_match_screans.dart';

import 'package:pantomim/views/dialog_screns/dialog_setting.dart';
import 'package:pantomim/views/widgets/box_.meno_image.dart';

class MenoScreans extends StatefulWidget {
  const MenoScreans({Key? key}) : super(key: key);

  @override
  State<MenoScreans> createState() => _MenoScreansState();
}

class _MenoScreansState extends State<MenoScreans> {
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
          backgroundColor: Colors.transparent,
          body: SafeArea(
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
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
                              style:
                                  Theme.of(context).primaryTextTheme.subtitle1,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: size.height * 0.20,
                ),
                Center(
                  child: InkWell(
                      borderRadius: BorderRadius.circular(60),
                      highlightColor: kwhite,
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ChoiceYourTopic()));
                      },
                      child: const HomePage()),
                )
              ])),
        ),
      ),
    );
  }
}

// ignore: camel_case_types
