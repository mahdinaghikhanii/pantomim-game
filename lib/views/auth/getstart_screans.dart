import 'package:flutter/material.dart';
import 'package:pantomim/views/auth/home_screans.dart';

class GetStartScreans extends StatelessWidget {
  const GetStartScreans({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Padding(
        padding: EdgeInsets.all(25),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Container(
              width: double.infinity,
              height: 70,
              color: Color(0xFFDC9298),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(primary: Color(0xFFDC9298)),
                child: Text('data'),
                onPressed: () {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => HomeScreans()));
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
                height: 80,
              ),
              Padding(
                padding: EdgeInsets.all(10),
                child: Image.asset(
                  'assets/images/getstart.png',
                  width: 400,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: EdgeInsets.all(10),
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
