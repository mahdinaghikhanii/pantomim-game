// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:pantomim/theme/constant.dart';
import 'package:pantomim/views/auth/meno_screans.dart';

class HomeScreans extends StatelessWidget {
  const HomeScreans({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
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
          child: Container(
            width: double.infinity,
            height: size.height,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Center(
                  child: Image.asset(
                    'assets/images/frinds1.png',
                    width: size.width,
                    height: size.height * 0.40,
                  ),
                ),
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  // ignore: prefer_const_literals_to_create_immutables
                  Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                    const Padding(
                        padding: EdgeInsets.only(left: 30),
                        child: Text(
                          'Play',
                          style: TextStyle(
                              color: Color(0xFF0D47A1),
                              fontSize: 38,
                              fontWeight: FontWeight.bold),
                        )),
                    Text(
                      ' with',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 38,
                          fontWeight: FontWeight.bold),
                    )
                  ]),
                  Padding(
                      padding: EdgeInsets.only(left: 30, top: 10),
                      child: Text(
                        'Friends',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 38,
                            fontWeight: FontWeight.bold),
                      )),
                ]),
                SizedBox(
                  height: size.height * 0.12,
                ),
                Button_widget(
                  text: 'START PLAY',
                  color: const Color(0xFF0D47A1),
                  ontap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => MenoScreans()));
                  },
                ),
                Button_widget(
                  color: Colors.transparent,
                  text: "HOW TO PLAY ?",
                  ontap: () {},
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
    return Padding(
      padding: const EdgeInsets.only(left: 30, right: 30, top: 10, bottom: 10),
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
    );
  }
}
