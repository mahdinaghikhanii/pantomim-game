import 'package:flutter/material.dart';

import '../../constants.dart';

class DialogShow extends StatelessWidget {
  const DialogShow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(Constants.padding),
              child: Container(
                width: 100,
                height: 100,
                child: const CircleAvatar(
                  backgroundImage: AssetImage(
                    'assets/images/mahdi.jpg',
                  ),
                ),
              ),
            ),
            const SizedBox(
              width: 0,
            ),
            Text(
              'Food',
              style: Theme.of(context).primaryTextTheme.subtitle1,
            )
          ],
        )
      ],
    );
  }
}

contentBox(context) {}
