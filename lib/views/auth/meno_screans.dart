import 'package:flutter/material.dart';
import 'package:pantomim/theme/constant.dart';

class MenoScreans extends StatelessWidget {
  const MenoScreans({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: SafeArea(
        child: Column(
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
                  const SizedBox(
                    width: 40,
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
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Container(
                  padding: EdgeInsets.all(20),
                  width: double.infinity,
                  height: 150,
                  color: kpink,
                  child: Row(
                    children: [
                      Image.asset(
                        'assets/images/star.png',
                        width: 120,
                      ),
                      Spacer(),
                      ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Container(
                              padding: EdgeInsets.all(3),
                              width: 100,
                              height: 30,
                              color: kwhite,
                              child: Text(
                                'Scored',
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
          ],
        ),
      ),
    );
  }
}
