import 'package:flutter/material.dart';

class ChoiceYourTopic extends StatelessWidget {
  const ChoiceYourTopic({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // ignore: prefer_const_literals_to_create_immutables
        actions: [
          // ignore: prefer_const_constructors
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: const Text(
              'Pantomim :)',
              style: TextStyle(
                fontSize: 20,
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(
              height: 20,
            ),
            Center(
                child: Text(
              'Choice Your Topic !',
              style: Theme.of(context).primaryTextTheme.subtitle1,
            )),
            Wrap(
              spacing: 2,
              runSpacing: 2,
              children: [],
            )
          ],
        ),
      ),
    );
  }
}
