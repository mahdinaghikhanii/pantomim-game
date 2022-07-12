import 'package:flutter/material.dart';
import 'package:pantomim/models/howtoplay_dialog.dart';
import 'package:pantomim/module/constans/constant.dart';

class DialogHowToPlay extends StatelessWidget {
  const DialogHowToPlay({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    PageController _pageController = PageController(initialPage: 0);
    List<HowToPlayDialogModel> model = <HowToPlayDialogModel>[
      HowToPlayDialogModel(Constans.howtoplayDialogText1),
      HowToPlayDialogModel(Constans.howtoplayDialogText2),
      HowToPlayDialogModel(Constans.howtoplayDialogText3),
    ];
    final size = MediaQuery.of(context).size;
    return Dialog(
        insetPadding: const EdgeInsets.all(Constans.padding),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(Constans.padding),
        ),
        elevation: 0,
        backgroundColor: kwhite,
        child: Stack(
          clipBehavior: Clip.none,
          alignment: Alignment.center,
          children: [
            SizedBox(
              width: 400,
              height: 450,
              child: PageView.builder(
                  controller: _pageController,
                  itemCount: model.length,
                  itemBuilder: ((context, index) {
                    return Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          model[index].text.toString(),
                          style: styleTextForDialogHowToPlay,
                          textAlign: TextAlign.center,
                          overflow: TextOverflow.ellipsis,
                        )
                      ],
                    );
                  })),
            ),
            Positioned(
                top: -size.height * 0.10,
                child: Image.asset('assets/images/howplay.png'),
                width: size.width * 0.55,
                height: size.height * 0.17),
          ],
        ));
  }
}
