import 'package:flutter/material.dart';
import 'package:pantomim/generated/l10n.dart';
import 'package:pantomim/theme/constant.dart';

class DialogWinOrLose extends StatelessWidget {
  const DialogWinOrLose({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    var localApp = S.of(context);

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
                children: <Widget>[
                  SizedBox(
                      width: double.infinity,
                      height: size.height * 0.30,
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('data'),
                            Positioned(
                                top: -size.height * 0.12,
                                child: Image.asset(
                                  'assets/icons/question.png',
                                  width: 200,
                                ),
                                width: size.width * 0.55,
                                height: size.height * 0.17),
                          ]))
                ])));
  }
}
