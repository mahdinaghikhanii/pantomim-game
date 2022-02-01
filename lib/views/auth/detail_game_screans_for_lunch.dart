import 'package:flutter/material.dart';
import 'package:pantomim/generated/l10n.dart';
import 'package:pantomim/util/view_models/provider.dart';
import 'package:pantomim/theme/constant.dart';
import 'package:pantomim/views/dialog_screns/dialog_choice_your_topic.dart';
import 'package:pantomim/views/dialog_screns/dialog_quit.dart';
import 'package:pantomim/views/widgets/double_floatingac_button.dart';
import 'package:provider/provider.dart';

class DetailGameScreans extends StatelessWidget {
  const DetailGameScreans({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var localApp = S.of(context);
    final size = MediaQuery.of(context).size;
    final modelProvider = Provider.of<AppProvider>(context);

    return Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: [Colors.white38, Colors.blue])),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        floatingActionButton:
            Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
          DounleFloattingButton(
              ontap: () {
                showDialog(
                    context: context,
                    builder: (
                      context,
                    ) =>
                        const DialogQuit());
              },
              colorBtn: kblue,
              textBtn: 'QUIT GAME'),
          DounleFloattingButton(
              ontap: () {
                showDialog(
                    context: context, builder: (context) => DialogShow());
              },
              colorBtn: Colors.transparent,
              textBtn: 'LETS GO !')
        ]),
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
                        text: "Rounds ",
                        style: Theme.of(context).textTheme.bodyText1),
                    TextSpan(
                        text: modelProvider.getCounterMatch().toString(),
                        style: Theme.of(context).textTheme.bodyText1),
                    TextSpan(
                        text: " in 1",
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
                      scoreTeam: "1",
                      visiblity: true,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    RowShowTeamAndScore(
                        nameTeam: modelProvider.team2.value,
                        scoreTeam: "1",
                        visiblity: true),
                    const SizedBox(
                      height: 20,
                    ),
                    RowShowTeamAndScore(
                        nameTeam: modelProvider.team3.value,
                        scoreTeam: "1",
                        visiblity: modelProvider.visibilityTeam3)
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class RowShowTeamAndScore extends StatelessWidget {
  const RowShowTeamAndScore(
      {Key? key,
      required this.nameTeam,
      required this.scoreTeam,
      required this.visiblity})
      : super(key: key);
  final String nameTeam;
  final String scoreTeam;
  final bool visiblity;

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
              const Icon(Icons.play_arrow, color: kwhite),
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
