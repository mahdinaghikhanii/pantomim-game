import 'package:flutter/material.dart';

class HomeScreans extends StatelessWidget {
  const HomeScreans({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text(
              'fuck',
              style: TextStyle(color: Colors.black, fontSize: 50),
            ),
          ),
          Image.asset('assets/images/mahdi.jpg')
        ],
      ),
    );
  }
}
