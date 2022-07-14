import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../generated/l10n.dart';
import '../../module/constans/constant.dart';
import '../../module/widgets/double_floatingac_button.dart';
import '../../provider/team_provider.dart';
import '../screan/home_screans.dart';

class DialogFinishidGame extends StatelessWidget {
  const DialogFinishidGame({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    var localApp = S.of(context);
    final modelProvier = Provider.of<TeamProvider>(context);
    return Dialog(
        insetPadding:
            const EdgeInsets.only(left: 25, right: 25, top: 110, bottom: 130),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(45),
        ),
        elevation: 0,
        backgroundColor: kwhite,
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
                    child: Image.asset('assets/images/score.png',
                        width: size.width * 0.55, height: size.height * 0.17),
                  )),
              Container(
                padding: const EdgeInsets.all(20),
                width: size.width * 0.83,
                height: modelProvier.getNumberOfTeams() == 2
                    ? size.height * 0.50
                    : modelProvier.getNumberOfTeams() == 3
                        ? size.height * 0.56
                        : modelProvier.getNumberOfTeams() == 4
                            ? size.height * 0.70
                            : 0,
                decoration: BoxDecoration(
                    color: Colors.white24,
                    borderRadius: BorderRadius.circular(50)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 45,
                    ),
                    FinishidScreansTextDetail(
                      scoreTeam:
                          modelProvier.getCounterOfScoreTeam1().toString(),
                      nameTeam: modelProvier.team1.value.toString(),
                      visibility: true,
                    ),
                    FinishidScreansTextDetail(
                      scoreTeam:
                          modelProvier.getCounterOfScoreTeam2().toString(),
                      nameTeam: modelProvier.team2.value.toString(),
                      visibility: true,
                    ),
                    FinishidScreansTextDetail(
                      scoreTeam:
                          modelProvier.getCounterOfScoreTeam3().toString(),
                      nameTeam: modelProvier.team3.value.toString(),
                      visibility: modelProvier.visibilityTeam3,
                    ),
                    FinishidScreansTextDetail(
                      scoreTeam:
                          modelProvier.getCounterOfScoreTeam4().toString(),
                      nameTeam: modelProvier.team4.value.toString(),
                      visibility: modelProvier.visibilityTeam4,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 35, bottom: 10),
                      child: Center(
                        child: DounleFloattingButton(
                          colorBtn: kblue,
                          ontap: () {
                            modelProvier.reasetvalue();
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const HomeScreans()));
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

class FinishidScreansTextDetail extends StatelessWidget {
  final String nameTeam;
  final bool visibility;
  final String scoreTeam;

  // ignore: use_key_in_widget_constructors
  const FinishidScreansTextDetail(
      {required this.nameTeam,
      required this.scoreTeam,
      required this.visibility});
  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    final modelProvier = Provider.of<TeamProvider>(context);
    return Visibility(
      visible: visibility,
      child: Padding(
        padding: const EdgeInsets.only(top: 35, right: 10, left: 10),
        child: Row(
          children: [
            Text(
              nameTeam,
              style: Theme.of(context).textTheme.headline4,
            ),
            const Spacer(),
            Text(
              scoreTeam,
              style: Theme.of(context).textTheme.headline4,
            )
          ],
        ),
      ),
    );
  }
}
