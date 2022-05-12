import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'home_screans.dart';

class OnBoardScreans extends StatelessWidget {
  const OnBoardScreans({Key? key}) : super(key: key);

  _storeInBoardScreansInfo() async {
    int isViewed = 0;
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setInt('InBoardScreans', isViewed);
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(25),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Container(
              decoration: const BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                      colors: [Colors.white38, Colors.blue])),
              width: double.infinity,
              height: 70,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(primary: Colors.transparent),
                child: Text(
                  'Lets Go',
                  style: Theme.of(context).primaryTextTheme.bodyText1,
                ),
                onPressed: () async {
                  await _storeInBoardScreansInfo();
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const HomeScreans()));
                },
              )),
        ),
      ),
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: size.height * 0.10,
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: Image.asset(
                  'assets/images/new-years-eve.png',
                  width: size.width * 1.0,
                  height: size.height * 0.40,
                ),
              ),
              SizedBox(
                height: size.height * 0.03,
              ),
              // ignore: prefer_const_constructors
              Padding(
                padding: const EdgeInsets.all(10),
                child: Text(
                    'Welcome😍\n Your Playing game Pantomim\nHere Enjoy Kelly',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 22,
                        color: Colors.blue.shade200,
                        fontWeight: FontWeight.bold)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
 //'😍 خوش اومدید \n شما می تونید بازی پانتومیم یا ادا بازی کنید \nکلی لذت ببرید ',


