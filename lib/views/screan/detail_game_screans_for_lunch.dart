import 'package:flutter/material.dart';
import 'package:pantomim/provider/team_provider.dart';
import 'package:provider/provider.dart';

import '../../generated/l10n.dart';
import '../../main.dart';
import '../../module/constans/constant.dart';
import '../../module/extension/extension.dart';
import '../../module/widgets/double_floatingac_button.dart';
import '../../module/widgets/rowshowteam_andscore.dart';
import '../dialog_screns/dialog_quit.dart';
import 'choictopic_screans.dart';

class DetailGameScreans extends StatelessWidget {
  const DetailGameScreans({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var localApp = S.of(context);
    final teas = Provider.of<TeamProvider>(context);

    return WillPopScope(
        onWillPop: () async {
          ScaffoldMessenger.of(context);

          return false;
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
                      colorBtn: Colors.transparent,
                      textBtn:
                          localApp.detailGameScreansForLunchBtnNameQuitGame,
                      highlightColor: Colors.transparent,
                    ),
                    DounleFloattingButton(
                      ontap: () {
                        context.nextScreans(const ChoiceTopicScreans());
                      },
                      colorBtn: kblue,
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
                            text: teas.getNumberOfRounds().toString(),
                            style: Theme.of(context).textTheme.bodyText1),
                        TextSpan(
                            text: localApp.detailGameScreansForLunchTitleTextIn,
                            style: Theme.of(context).textTheme.bodyText1),
                        TextSpan(
                            text:
                                teas.gettitleNumberOfRoundsOfGame().toString(),
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
                        const SizedBox(height: 20),
                        RowShowTeamAndScore(
                          nameTeam: teamProvider.getNameTeam1,
                          scoreTeam:
                              teamProvider.getCounterOfScoreTeam1().toString(),
                          visiblity: true,
                          iconVisibility: teas.visibilityTeam1Icon,
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        RowShowTeamAndScore(
                          nameTeam: teamProvider.getNameTeam2,
                          scoreTeam:
                              teamProvider.getCounterOfScoreTeam2().toString(),
                          visiblity: true,
                          iconVisibility: teas.visibilityTeam2Icon,
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        RowShowTeamAndScore(
                          nameTeam: teamProvider.getNameTeam3,
                          scoreTeam:
                              teamProvider.getCounterOfScoreTeam3().toString(),
                          visiblity: teas.visibilityTeam3,
                          iconVisibility: teas.visibilityTeam3Icon,
                        ),
                        const SizedBox(height: 20),
                        RowShowTeamAndScore(
                          nameTeam: teamProvider.getNameTeam4,
                          scoreTeam:
                              teamProvider.getCounterOfScoreTeam4().toString(),
                          visiblity: teas.visibilityTeam4,
                          iconVisibility: teas.visibilityTeam4Icon,
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
