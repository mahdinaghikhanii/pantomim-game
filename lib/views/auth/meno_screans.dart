import 'package:flutter/material.dart';
import 'package:pantomim/theme/constant.dart';
import 'package:pantomim/views/auth/choice_your_topic.dart';
import 'package:pantomim/views/widgets/box_.meno_image.dart';

class MenoScreans extends StatelessWidget {
  const MenoScreans({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset(
                      'assets/images/balloon.png',
                      width: 90,
                      height: 90,
                    ),
                  ),
                  const Spacer(),
                  const SizedBox(
                    width: 00,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'Pantomim Game',
                          style: Theme.of(context).primaryTextTheme.subtitle1,
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.only(left: 8, right: 8, top: 0),
                        child: Text(
                          'Best Game For Family',
                          style: Theme.of(context).primaryTextTheme.subtitle1,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const ChoiceYourTopic()));
                  },
                  child: Container(
                    padding: const EdgeInsets.all(12),
                    width: double.infinity,
                    height: 150,
                    color: kpurple,
                    child: Row(
                      children: [
                        Image.asset(
                          'assets/images/car.png',
                          width: 120,
                        ),
                        const Spacer(),
                        ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Container(
                                padding: const EdgeInsets.all(3),
                                width: 200,
                                height: 30,
                                color: kwhite,
                                child: Text(
                                  '10 second questions',
                                  textAlign: TextAlign.center,
                                  style: Theme.of(context)
                                      .primaryTextTheme
                                      .subtitle1,
                                )))
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Center(
              child: Wrap(
                spacing: 6,

                runSpacing: 0,
                direction: Axis.horizontal,
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  BoxForMenoImage(
                    image: 'assets/images/star.png',
                    text: 'Normal',
                    color: kyellow,
                    tap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const ChoiceYourTopic()));
                    },
                  ),
                  BoxForMenoImage(
                    color: klightgrean,
                    image: 'assets/images/frinds.png',
                    text: 'Frinds',
                    tap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const ChoiceYourTopic()));
                    },
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            const Divider()
          ],
        ),
      ),
    );
  }
}
