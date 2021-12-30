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
                height: size.height * 0.02,
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                    width: double.infinity,
                    height: size.height * 0.25,
                    decoration: BoxDecoration(
                        color: kblue, borderRadius: BorderRadius.circular(20)),
                    child: Container()),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
