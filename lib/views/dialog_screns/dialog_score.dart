import 'package:flutter/material.dart';
import 'package:pantomim/theme/constant.dart';

class DialogScore extends StatelessWidget {
  const DialogScore({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Dialog(
        insetPadding:
            const EdgeInsets.only(left: 20, right: 20, top: 40, bottom: 40),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(Constans.padding),
        ),
        elevation: 0,
        backgroundColor: Colors.white,
        child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Stack(
                clipBehavior: Clip.none,
                alignment: Alignment.center,
                children: <Widget>[])));
  }
}
