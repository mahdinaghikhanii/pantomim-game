import 'package:flutter/material.dart';
import 'package:pantomim/theme/constant.dart';

import '../../constants.dart';

class DialogShow extends StatelessWidget {
  const DialogShow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(width: 10),
            Padding(
              padding: const EdgeInsets.all(Constants.padding),
              child: Container(
                width: 90,
                height: 90,
                child: const CircleAvatar(
                  backgroundColor: kpink,
                  backgroundImage: AssetImage(
                    'assets/images/topic/food.png',
                  ),
                ),
              ),
            ),
            SizedBox(
              width: 2,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Food',
                  style: Theme.of(context).primaryTextTheme.subtitle1,
                ),
                Text(
                  'name group',
                  style: Theme.of(context).primaryTextTheme.subtitle1,
                ),
              ],
            )
          ],
        )
      ],
    );
  }
}

contentBox(context) {}
