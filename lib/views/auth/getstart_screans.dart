import 'package:flutter/material.dart';

class GetStartScreans extends StatelessWidget {
  const GetStartScreans({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SafeArea(
              child: Padding(
                padding: EdgeInsets.all(10),
                child: Image.asset(
                  'assets/images/getstart.png',
                  width: 400,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
