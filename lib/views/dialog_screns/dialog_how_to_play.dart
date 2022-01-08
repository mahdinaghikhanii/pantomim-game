import 'package:flutter/material.dart';
import 'package:pantomim/theme/constant.dart';

import '../../constants.dart';

class DialogHowToPlay extends StatelessWidget {
  const DialogHowToPlay({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Dialog(
        insetPadding: const EdgeInsets.all(00),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(Constants.padding),
        ),
        elevation: 0,
        backgroundColor: kwhite,
        child: Stack(
          clipBehavior: Clip.none,
          alignment: Alignment.center,
          children: [
            Positioned(
                top: -size.height * 0.12,
                child: Image.asset('assets/images/howplay.png'),
                width: size.width * 0.55,
                height: size.height * 0.17),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20, top: 50),
              child: Row(
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  const Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'If you are looking for a fun\npastimeforfriendly and family\n getaways, pantomime is an option\n that everyone present, even\n those who are not, will enjoy.\nIn pantomime, you have to show\n a word or phrase to your teammates\nwithout speaking and with the help of special\n gestures and gestures, and they\n have to guess the word. The team\nthat guesses the words in less time will\nbe ahead of its rival. This\narticle is about teaching pantomime\nand its rules. After learning pantomime,\n you will read a list of interesting\nideas for this game. ',
                      style: styleTextForDialogHowToPlay,
                      textAlign: TextAlign.center,
                      overflow: TextOverflow.ellipsis,
                    ),
                  )
                ],
              ),
            ),
          ],
        ));
  }
}
