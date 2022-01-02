import 'package:flutter/material.dart';
import 'package:pantomim/theme/constant.dart';
import 'package:pantomim/views/widgets/box_.meno_image.dart';

class MenoScreans extends StatelessWidget {
  const MenoScreans({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: [Colors.white38, Colors.blue])),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
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
                            children: const [
                              Text(
                                'Pantomim',
                                style: TextStyle(
                                    color: Color(0xFF0D47A1),
                                    fontSize: 28,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                ' Game ',
                                style: TextStyle(
                                    color: kwhite,
                                    fontSize: 28,
                                    fontWeight: FontWeight.bold),
                              )
                            ],
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
              SizedBox(
                height: size.height * 0.01,
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  width: size.width,
                  height: size.height * 0.30,
                  decoration: BoxDecoration(
                      color: Colors.yellow.shade800,
                      borderRadius: BorderRadius.circular(20)),
                  child: Center(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Column(children: [
                                Padding(
                                  padding:
                                      const EdgeInsets.only(left: 0, top: 0),
                                  child: Text(
                                      'Let`s Become\na New\nNormal Game',
                                      style: Theme.of(context)
                                          .primaryTextTheme
                                          .subtitle1),
                                ),
                                SizedBox(height: size.height * 0.03),
                                Container(
                                  width: size.width * 0.29,
                                  height: size.height * 0.06,
                                  decoration: BoxDecoration(
                                      color: const Color(0xFF6A1B9A),
                                      borderRadius: BorderRadius.circular(11)),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        'Lets Go',
                                        style: Theme.of(context)
                                            .primaryTextTheme
                                            .bodyText2,
                                        textAlign: TextAlign.center,
                                      ),
                                      const Icon(
                                        Icons.chevron_right_rounded,
                                        color: Colors.white,
                                      )
                                    ],
                                  ),
                                ),
                              ]),
                              Padding(
                                padding: const EdgeInsets.only(
                                  top: 10,
                                ),
                                child: Image.asset(
                                  'assets/images/normal.png',
                                  width: size.width * 0.50,
                                  height: size.height * 0.24,
                                ),
                              )
                            ])
                      ],
                    ),
                  ),
                ),
              ),
              Wrap(
                runSpacing: 8,
                spacing: 8,
                children: [
                  BoxForMenoImage(
                    color: Color(0xFF6A1B9A),
                    tap: () {},
                    image: 'assets/images/spead.png',
                    text: 'Fight',
                  ),
                  BoxForMenoImage(
                    color: kblue,
                    tap: () {},
                    image: 'assets/images/car.png',
                    text: 'Spead',
                  ),
                  SmalBox_For_MenoScreans(
                    text: 'Score',
                    color: Colors.yellow.shade800,
                    image: 'assets/images/score.png',
                  ),
                  BoxForMenoImage(
                    color: Color(0xFF6A1B9A),
                    tap: () {},
                    image: 'assets/images/setting.png',
                    text: 'Setting',
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class SmalBox_For_MenoScreans extends StatelessWidget {
  final String text;
  final String image;
  final Color color;
  const SmalBox_For_MenoScreans(
      {required this.text, required this.image, required this.color});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      width: size.width * 0.46,
      height: 70,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(18),
        color: color,
      ),
      child: Center(
        child: Row(mainAxisAlignment: MainAxisAlignment.center,
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              Image.asset(
                image,
                width: size.width * 0.12,
                height: size.height * 0.10,
              ),
              SizedBox(
                width: size.width * 0.04,
              ),
              Text(text, style: Theme.of(context).primaryTextTheme.button)
            ]),
      ),
    );
  }
}
