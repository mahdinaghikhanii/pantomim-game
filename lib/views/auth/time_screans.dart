// ignore_for_file: prefer_const_constructors

import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:pantomim/theme/constant.dart';
import 'package:pantomim/views/auth/home_screans.dart';

class TimerScreans extends StatelessWidget {
  const TimerScreans({Key? key}) : super(key: key);

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
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          actions: [
            Padding(
              padding: const EdgeInsets.only(
                  right: Constans.padding, top: 12, left: Constans.padding),
              child:
                  Text('4 Score', style: Theme.of(context).textTheme.bodyText1),
            )
          ],
        ),
        body: Container(
          padding: EdgeInsets.only(top: 80),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Center(
                child: Padding(
                    padding: const EdgeInsets.all(Constans.padding),
                    child: Text(
                      'apple',
                      style: Theme.of(context).textTheme.headline1,
                    )),
              ),
              const SizedBox(
                height: 90,
              ),
              Column(
                children: [
                  Text(
                    '0:23',
                    style: Theme.of(context).textTheme.subtitle2,
                  ),
                  Text(
                    'Time',
                    style: Theme.of(context).textTheme.bodyText2,
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  FadeInUp(
                    duration: Duration(milliseconds: 1200),
                    delay: Duration(microseconds: 1200),
                    child: Padding(
                      padding: const EdgeInsets.only(
                          left: 30, right: 30, top: 10, bottom: 10),
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(
                                color: kblue.withOpacity(1), width: 3)),
                        child: InkWell(
                          onTap: () {},
                          child: Container(
                            width: double.infinity,
                            height: size.height * 0.09,
                            color: Colors.transparent.withOpacity(0.05),
                            child: Center(
                                child: Text(
                              "START",
                              style: TextStyle(
                                  color: kblue,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16),
                            )),
                          ),
                        ),
                      ),
                    ),
                  ),
                  FadeInUp(
                    duration: Duration(milliseconds: 1200),
                    delay: Duration(microseconds: 1200),
                    child: Padding(
                      padding: const EdgeInsets.only(
                          left: 30, right: 30, top: 10, bottom: 10),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: InkWell(
                          onTap: () {},
                          child: Container(
                            width: double.infinity,
                            height: size.height * 0.09,
                            color: Colors.transparent,
                            child: Center(
                                child: Text(
                              "WRONG",
                              style: const TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16),
                            )),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Container(),
            ],
          ),
        ),
      ),
    );
  }
}
