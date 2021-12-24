import 'package:flutter/material.dart';
import 'package:pantomim/views/auth/home_screans.dart';

class GetStartScreans extends StatelessWidget {
  const GetStartScreans({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(25),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Container(
              width: double.infinity,
              height: 70,
              color: const Color(0xFFDC9298),
              child: ElevatedButton(
                style:
                    ElevatedButton.styleFrom(primary: const Color(0xFFDC9298)),
                child: const Text('Lets Go'),
                onPressed: () {
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
              const SizedBox(
                height: 80,
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: Image.asset(
                  'assets/images/getstart.png',
                  width: 400,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: Text(
                  '😍 خوش اومدید \n شما می تونید بازی پانتومیم یا ادا بازی کنید \nکلی لذت ببرید ',
                  textAlign: TextAlign.center,
                  style: Theme.of(context).primaryTextTheme.subtitle1,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
