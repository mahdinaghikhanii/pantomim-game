import 'package:flutter/material.dart';
import '../../provider/provider.dart';
import '../module/extension/extension.dart';
import 'package:provider/provider.dart';

import '../../generated/l10n.dart';
import '../module/constans/constant.dart';
import '../dialog_screns/dialog_choice_your_topic.dart';
import '../dialog_screns/dialog_quit.dart';
import '../module/widgets/double_floatingac_button.dart';

class DetailGameScreans extends StatelessWidget {
  const DetailGameScreans({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var localApp = S.of(context);
    // ignore: unused_local_variable
    final size = MediaQuery.of(context).size;
    final modelProvider = Provider.of<AppProvider>(context);

    return WillPopScope(
        onWillPop: () async {
          ScaffoldMessenger.of(context);

          return true;
        },
        child: Container(
          decoration: backgroundDefaultScafold,
          child: Scaffold(
            backgroundColor: Colors.transparent,
            floatingActionButtonLocation:
                FloatingActionButtonLocation.centerDocked,
            floatingActionButton: Padding(
              padding: const EdgeInsets.only(bottom: Constans.padding),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    DounleFloattingButton(
                      ontap: () {
                        context.showDialogs(const DialogQuit(), true);
                      },
                      colorBtn: kblue,
                      textBtn:
                          localApp.detailGameScreansForLunchBtnNameQuitGame,
                      highlightColor: Colors.transparent,
                    ),
                    DounleFloattingButton(
                      ontap: () {
                        modelProvider.setStringenandFaGameTheme;
                        context.showDialogs(const DialogShow(), true);
                      },
                      colorBtn: Colors.transparent,
                      textBtn: localApp.detailGameScreansForLunchBtnNameLetsGo,
                      highlightColor: Colors.transparent,
                    )
                  ]),
            ),
            body: SafeArea(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.all(Constans.padding),
                      child: RichText(
                          text: TextSpan(children: [
                        TextSpan(
                            text: localApp
                                .detailGameScreansForLunchTitleTextRounds,
                            style: Theme.of(context).textTheme.bodyText1),
                        TextSpan(
                            text: modelProvider.getNumberOfRounds().toString(),
                            style: Theme.of(context).textTheme.bodyText1),
                        TextSpan(
                            text: localApp.detailGameScreansForLunchTitleTextIn,
                            style: Theme.of(context).textTheme.bodyText1),
                        TextSpan(
                            text: modelProvider
                                .gettitleNumberOfRoundsMath()
                                .toString(),
                            style: Theme.of(context).textTheme.bodyText1),
                      ])),
                    ),
                  ),
                  const Divider(
                    indent: 20,
                    endIndent: 20,
                    color: kwhite,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(Constans.padding),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Row(
                          children: [
                            Text(
                              localApp.detailGameScreansForLunchNameTeam,
                              style: Theme.of(context).textTheme.bodyText1,
                            ),
                            const Spacer(),
                            Text(
                              localApp.detailGameScreansForLunchScore,
                              style: Theme.of(context).textTheme.bodyText1,
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        RowShowTeamAndScore(
                          nameTeam: modelProvider.team1.value,
                          scoreTeam:
                              modelProvider.getCounterOfScoreTeam1().toString(),
                          visiblity: true,
                          iconVisibility: modelProvider.visibilityTeam1Icon,
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        RowShowTeamAndScore(
                          nameTeam: modelProvider.team2.value,
                          scoreTeam:
                              modelProvider.getCounterOfScoreTeam2().toString(),
                          visiblity: true,
                          iconVisibility: modelProvider.visibilityTeam2Icon,
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        RowShowTeamAndScore(
                          nameTeam: modelProvider.team3.value,
                          scoreTeam:
                              modelProvider.getCounterOfScoreTeam3().toString(),
                          visiblity: modelProvider.visibilityTeam3,
                          iconVisibility: modelProvider.visibilityTeam3Icon,
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        RowShowTeamAndScore(
                          nameTeam: modelProvider.team4.value,
                          scoreTeam:
                              modelProvider.getCounterOfScoreTeam4().toString(),
                          visiblity: modelProvider.visibilityTeam4,
                          iconVisibility: modelProvider.visibilityTeam4Icon,
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}

class RowShowTeamAndScore extends StatelessWidget {
  const RowShowTeamAndScore(
      {Key? key,
      required this.nameTeam,
      required this.scoreTeam,
      required this.visiblity,
      required this.iconVisibility})
      : super(key: key);
  final String nameTeam;
  final String scoreTeam;
  final bool visiblity;
  final bool iconVisibility;

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: visiblity,
      child: Container(
        padding: const EdgeInsets.only(left: 0, top: 15, bottom: 15, right: 00),
        decoration: BoxDecoration(
            border: Border.all(color: Colors.transparent),
            borderRadius: BorderRadius.circular(20)),
        child: Padding(
          padding: const EdgeInsets.only(left: 0, right: 15),
          child: Row(
            children: [
              Text(
                nameTeam,
                style: Theme.of(context).textTheme.bodyText1,
              ),
              const SizedBox(
                width: 20,
              ),
              Visibility(
                  visible: iconVisibility,
                  child: const Icon(Icons.play_arrow, color: kwhite, size: 28)),
              const Spacer(),
              Text(
                scoreTeam,
                style: Theme.of(context).textTheme.bodyText1,
              )
            ],
          ),
        ),
      ),
    );
  }
}
