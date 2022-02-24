import 'package:flutter/material.dart';
import 'package:pantomim/generated/l10n.dart';
import 'package:pantomim/theme/constant.dart';
import 'package:pantomim/util/view_models/provider/provider.dart';
import 'package:pantomim/views/widgets/double_floatingac_button.dart';
import 'package:pantomim/views/widgets/scoreshowtext_textdetail.dart';
import 'package:provider/provider.dart';

class DialogFinishidGame extends StatelessWidget {
  const DialogFinishidGame({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    var localApp = S.of(context);
    final modelProvier = Provider.of<AppProvider>(context);
    return Dialog(
        insetPadding:
            const EdgeInsets.only(left: 25, right: 25, top: 120, bottom: 150),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(45),
        ),
        elevation: 0,
        backgroundColor: const Color(0xFFEEEEEE),
        child: Stack(
            clipBehavior: Clip.none,
            alignment: Alignment.center,
            children: <Widget>[
              Positioned(
                  top: -size.height * 0.10,
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.transparent),
                    child: Image.asset('assets/images/medal.png',
                        width: size.width * 0.55, height: size.height * 0.17),
                  )),
              Container(
                padding: const EdgeInsets.all(20),
                width: size.width * 0.83,
                height: size.height * 0.52,
                decoration: BoxDecoration(
                    color: Colors.white24,
                    borderRadius: BorderRadius.circular(50)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 45,
                    ),
                    Center(
                        child: Text(
                      "Game Is Finishid",
                      style: Theme.of(context).textTheme.headline5,
                    )),
                    WidgetShowTextWinOrLoseDetail(
                      title: 'Word rating :',
                      score: modelProvier.getCounterOfScoreTeam1().toString(),
                    ),
                    const WidgetShowTextWinOrLoseDetail(
                      title: 'Respond quickly :',
                      score: '2',
                    ),
                    const WidgetShowTextWinOrLoseDetail(
                      title: 'Error in the game  :',
                      score: '0',
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 40, bottom: 10),
                      child: Center(
                        child: DounleFloattingButton(
                          colorBtn: modelProvier.checkbtnwinlose ? kblue : kred,
                          ontap: () {
                            if (modelProvier.getcheckforInnigns >
                                modelProvier.getCounterTeam()) {
                              showDialog(
                                  context: context,
                                  builder: (
                                    context,
                                  ) =>
                                      const DialogFinishidGame());
                            } else {
                              if (modelProvier.checkbtnwinlose == true) {
                                modelProvier.setaddcheckforInnigns();
                              } else {}

                              if (modelProvier.getcheckforInnigns >
                                  modelProvier.getCounterTeam()) {
                                showDialog(
                                    context: context,
                                    builder: (
                                      context,
                                    ) =>
                                        const DialogFinishidGame());
                              }
                            }
                          },
                          textBtn: localApp.scoreScreansBtnText,
                          highlightColor: kblue,
                        ),
                      ),
                    )
                  ],
                ),
              )
            ]));
  }
}
