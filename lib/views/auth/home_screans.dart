import 'package:flutter/material.dart';
import 'package:pantomim/theme/constant.dart';
import 'package:pantomim/views/auth/meno_screans.dart';

class HomeScreans extends StatelessWidget {
  const HomeScreans({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: Text(
                'PanTomim',
                style: Theme.of(context).primaryTextTheme.subtitle2,
                textAlign: TextAlign.center,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(150),
                child: InkWell(
                  borderRadius: BorderRadius.circular(130),
                  onTap: () {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const MenoScreans()));
                  },
                  child: Container(
                    width: 300,
                    height: 300,
                    color: kpink,
                    child: const Icon(
                      Icons.play_arrow,
                      size: 120,
                      color: kwhite,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Text(
                'Lets Go Play Game',
                style: Theme.of(context).primaryTextTheme.subtitle2,
                textAlign: TextAlign.center,
              ),
            )
          ],
        ),
      ),
    );
  }
}
