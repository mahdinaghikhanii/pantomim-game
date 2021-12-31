import 'package:flutter/material.dart';
import 'package:pantomim/theme/constant.dart';
import 'package:pantomim/views/auth/choice_your_topic.dart';
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
                  height: size.height * 0.23,
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
                                  height: size.height * 0.05,
                                  decoration: BoxDecoration(
                                      color: const Color(0xFF6A1B9A),
                                      borderRadius: BorderRadius.circular(10)),
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
                                  height: size.height * 0.21,
                                ),
                              )
                            ])
                      ],
                    ),
                  ),
                ),
              ),
              Center(
                child: Wrap(
                  spacing: 4,
                  children: [
                    BoxForMenoImage(
                      color: Colors.red,
                      tap: () {},
                      image: 'assets/images/mahdi.jpg',
                      text: 'letsGo',
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 2),
                      child: Container(
                        width: 170,
                        height: 70,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(18),
                          color: Colors.green,
                        ),
                        child: Center(
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              // ignore: prefer_const_literals_to_create_immutables
                              children: [
                                Image.asset('assets/images/medal.png',
                                    width: 50),
                                SizedBox(
                                  width: size.width * 0.03,
                                ),
                                Text(
                                  'Score',
                                  style: Theme.of(context)
                                      .primaryTextTheme
                                      .bodyText1,
                                )
                              ]),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
