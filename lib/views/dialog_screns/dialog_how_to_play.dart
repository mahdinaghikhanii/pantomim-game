import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../models/howtoplay_dialog.dart';
import '../../module/constans/constant.dart';
import '../../provider/pagecontoroler_provider.dart';

class DialogHowToPlay extends StatelessWidget {
  const DialogHowToPlay({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _pageContorolerProvider =
        Provider.of<PageContorolerProvider>(context);
    PageController _pageController = PageController(initialPage: 0);
    List<HowToPlayDialogModel> model = <HowToPlayDialogModel>[
      HowToPlayDialogModel(Constans.howtoPlayText),
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
            const SizedBox(height: 20),
            SizedBox(
              width: 400,
              height: 300,
              child: PageView.builder(
                  controller: _pageController,
                  itemCount: 1,
                  onPageChanged: (int index) async {
                    _pageContorolerProvider.setCurentIndexGetStart(index);
                  },
                  itemBuilder: ((context, index) {
                    return Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.all(Constans.padding),
                                child: Text(
                                  model[index].text.toString(),
                                  style: styleTextForDialogHowToPlay,
                                  textAlign: TextAlign.center,
                                  maxLines: 20,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                            ),
                          ],
                        ),
                        /*       SizedBox(
                          height: 10.0,
                          child: ListView.builder(
                            itemCount: model.length,
                            shrinkWrap: true,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (context, index) {
                              return Container(
                                margin:
                                    const EdgeInsets.symmetric(horizontal: 3.0),
                                width: _pageContorolerProvider
                                            .getCurentIndexOnBoard ==
                                        index
                                    ? 40
                                    : 8,
                                height: 20,
                                decoration: BoxDecoration(
                                  color: _pageContorolerProvider
                                              .getCurentIndexOnBoard ==
                                          index
                                      ? kblue
                                      : Colors.grey,
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                              );
                            },
                          ),
                        ),*/
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
