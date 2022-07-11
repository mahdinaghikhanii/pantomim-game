import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:pantomim/module/constans/constant.dart';
import 'package:pantomim/module/extension/extension.dart';
import 'package:pantomim/provider/onboard_provider.dart';
import 'package:provider/provider.dart';

import 'home_screans.dart';

class OnBoardScreans extends StatelessWidget {
  const OnBoardScreans({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final onBoardView = Provider.of<OnBoardProvdier>(context);
    final size = MediaQuery.of(context).size;
    return Container(
      decoration: backgroundDefaultScafoldForOnBoard,
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            //  SizedBox(height: size.height * 0.10),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Lottie.asset(
                'assets/lottie/onboard.json',
                width: size.width * 1.2,
                height: size.height * 0.40,
              ),
            ),
            //  SizedBox(height: size.height * 0.03),
            // ignore: prefer_const_constructors
            RichText(
                textAlign: TextAlign.center,
                text: TextSpan(children: [
                  TextSpan(
                      text: "خوش ",
                      style: Theme.of(context).textTheme.subtitle1!.copyWith(
                          color: kblue,
                          wordSpacing: 1,
                          height: 1.40,
                          fontWeight: FontWeight.bold,
                          fontSize: 28)),
                  TextSpan(
                      text:
                          "امدید ! \nپانتومیم بازی بهترین بازی\nبرای خانواده :)",
                      style: Theme.of(context).textTheme.subtitle1!.copyWith(
                          color: kwhite,
                          wordSpacing: 1,
                          height: 1.40,
                          fontWeight: FontWeight.bold,
                          fontSize: 28))
                ])),

            FadeInRight(
              duration: const Duration(seconds: 1),
              child: Padding(
                padding: const EdgeInsets.all(25),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Container(
                      decoration: const BoxDecoration(color: Color(0xFF0D47A1)),
                      width: double.infinity,
                      height: 70,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: Colors.transparent),
                        child: Text('بزن بریم !',
                            style: context.textTheme.subtitle1!
                                .copyWith(fontSize: 26)),
                        onPressed: () {
                          onBoardView.storeInBoardScreansInfo();
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const HomeScreans()));
                        },
                      )),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
