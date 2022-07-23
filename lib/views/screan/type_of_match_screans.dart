import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pantomim/models/team.dart';
import 'package:pantomim/perfs/team_data.dart';
import 'package:provider/provider.dart';

import '../../generated/l10n.dart';
import '../../module/constans/constant.dart';
import '../../module/extension/extension.dart';
import '../../module/widgets/button_add_remove.dart';
import '../../module/widgets/double_floatingac_button.dart';
import '../../perfs/history.dart';
import '../../provider/team_provider.dart';
import 'detail_game_screans_for_lunch.dart';

class ChoiceYourTopic extends StatefulWidget {
  const ChoiceYourTopic({Key? key}) : super(key: key);

  @override
  State<ChoiceYourTopic> createState() => _ChoiceYourTopicState();
}

bool viewVisibleButton = false;
int selectValue = 0;
bool _viewAuto = true;
bool _viewCustom = true;

class _ChoiceYourTopicState extends State<ChoiceYourTopic> {
  //This state for plus numbe
  //this methode for unvisibility Text in Screans

  _unsetVisibility() {
    setState(() {
      _viewAuto = true;
      _viewCustom = false;
    });
  }

  // this state for back page

  _backPage() {
    Navigator.pop(context);
  }

  _nextPage() {
    Navigator.push(context,
        MaterialPageRoute(builder: (context) => const DetailGameScreans()));
  }

  _toggleVisibility() {
    setState(() {
      _viewAuto = false;
      _viewCustom = true;
    });
  }

  @override
  void initState() {
    super.initState();
    if (selectValue == 0) {
      _viewCustom = false;
    }
  }

  @override
  Widget build(BuildContext context) {
    var localApp = S.of(context);
    final teamdata = Provider.of<TeamData>(context);

    final modelProvider = Provider.of<TeamProvider>(context);

    List<String> nameTeamTextFiledInput = [
      localApp.timeForStartGame50Seconds,
      localApp.timeFOrStartGame1Min20Seconds,
      localApp.timeFOrStartGame1Min50Seconds,
      localApp.timeForStartGame2min20Seconds,
      localApp.timeFOrStartGame2Min50Seconds,
      localApp.timeFOrStartGame3Min20Seconds,
      localApp.timeFOrStartGame3Min50Seconds,
      localApp.timeFOrStartGame4Min20Seconds,
      localApp.timeFOrStartGame4Min50Seconds,
    ];

    final Map<int, Widget> mytab = <int, Widget>{
      0: Text(localApp.typeOfMatchScreansTextDetailNameButtonAUTO,
          style: Theme.of(context).textTheme.button),
      1: Text(localApp.typeOfMatchScreansTextDetailNameButtonCUSTOM,
          style: Theme.of(context).textTheme.button),
    };

    return Container(
      decoration: backgroundDefaultScafold,
      child: Scaffold(
          resizeToAvoidBottomInset: false,
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerDocked,
          floatingActionButton: Padding(
            padding: const EdgeInsets.only(bottom: Constans.padding),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  DounleFloattingButton(
                    ontap: () {
                      _backPage();
                    },
                    colorBtn: Colors.transparent,
                    textBtn: localApp.typeOfMatchScreansButtonBACKPAGE,
                    highlightColor: Colors.transparent,
                  ),
                  DounleFloattingButton(
                    ontap: () {
                      teamdata.addTeamInformation(TeamModel(
                          modelProvider.getNameTeam1,
                          modelProvider.getNameTeam2,
                          modelProvider.getNameTeam3,
                          modelProvider.getNameTeam4,
                          modelProvider.getNumberOfTeams(),
                          modelProvider.getNumberOfRounds(),
                          modelProvider.gettitleNumberOfRoundsOfGame()));
                      modelProvider.backGameIconShow(true);
                      Provider.of<History>(context, listen: false)
                          .incermnetNumberOfRounds();
                      modelProvider.setaddcheckforInnigns();
                      _nextPage();
                    },
                    colorBtn: kblue,
                    textBtn: localApp.typeOfMatchScreansButtonNextPage,
                    highlightColor: Colors.transparent,
                  )
                ]),
          ),
          backgroundColor: Colors.transparent,
          body: Container(
            padding: const EdgeInsets.only(top: 20),
            child: SafeArea(
              child: Padding(
                padding: const EdgeInsets.all(Constans.padding),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    RichText(
                      text: TextSpan(children: [
                        TextSpan(
                            text: localApp.typeOfMatchScreansTitleScreans1,
                            style: Theme.of(context).textTheme.headline2),
                        TextSpan(
                            text: localApp.typeOfMatchScreansTitleScreans2,
                            style: Theme.of(context).textTheme.subtitle2)
                      ]),
                    ),
                    SizedBox(
                      height: context.height * 0.04,
                    ),
                    Row(children: [
                      Container(
                          decoration: BoxDecoration(
                              border: Border.all(color: kwhite),
                              borderRadius: BorderRadius.circular(15)),
                          width: context.width * 0.62,
                          height: context.height * 0.23,
                          child: Center(
                            child: Wrap(
                              crossAxisAlignment: WrapCrossAlignment.end,
                              children: [
                                Container(
                                    padding: const EdgeInsets.all(10),
                                    color: Colors.transparent,
                                    width: context.width * 0.30,
                                    height: context.height * 0.10,
                                    child: TextField(
                                        onChanged: (String value) {
                                          modelProvider.changeNameTeams1(value);
                                        },
                                        decoration: InputDecoration(
                                          border: InputBorder.none,
                                          hintText: localApp
                                              .typeOfMatchScreansTextFiledInputTeam1,
                                          hintStyle: Theme.of(context)
                                              .textTheme
                                              .bodyText1,
                                        ),
                                        textAlign: TextAlign.center,
                                        style: styleTextInputTextField)),
                                Container(
                                    padding: const EdgeInsets.all(10),
                                    color: Colors.transparent,
                                    width: context.width * 0.30,
                                    height: context.height * 0.10,
                                    child: TextField(
                                        onChanged: (String value) {
                                          modelProvider.changeNameTeams2(value);
                                        },
                                        decoration: InputDecoration(
                                          hintText: localApp
                                              .typeOfMatchScreansTextFiledInputTeam2,
                                          hintStyle: Theme.of(context)
                                              .textTheme
                                              .bodyText1,
                                          border: InputBorder.none,
                                        ),
                                        textAlign: TextAlign.center,
                                        style: styleTextInputTextField)),
                                Container(
                                    padding: const EdgeInsets.all(10),
                                    color: Colors.transparent,
                                    width: context.width * 0.30,
                                    height: context.height * 0.10,
                                    child: TextField(
                                        onChanged: (String value) {
                                          modelProvider.changeNameTeams3(value);
                                        },
                                        decoration: InputDecoration(
                                          enabled:
                                              modelProvider.getNumberOfTeams() >
                                                      2
                                                  ? true
                                                  : false,
                                          floatingLabelStyle:
                                              styleTextInputTextField,
                                          hintText: localApp
                                              .typeOfMatchScreansTextFiledInputTeam3,
                                          hintStyle:
                                              modelProvider.getNumberOfTeams() >
                                                      2
                                                  ? Theme.of(context)
                                                      .textTheme
                                                      .bodyText1
                                                  : const TextStyle(
                                                      color: Colors.grey),
                                          border: InputBorder.none,
                                        ),
                                        textAlign: TextAlign.center,
                                        style: styleTextInputTextField)),
                                Container(
                                    padding: const EdgeInsets.all(10),
                                    color: Colors.transparent,
                                    width: context.width * 0.30,
                                    height: context.height * 0.10,
                                    child: TextField(
                                        enabled:
                                            modelProvider.getNumberOfTeams() > 3
                                                ? true
                                                : false,
                                        onChanged: (String value) {
                                          modelProvider.changeNameTeams4(value);
                                        },
                                        decoration: InputDecoration(
                                          hintText: localApp
                                              .typeOfMatchScreansTextFiledInputTeam4,
                                          hintStyle:
                                              modelProvider.getNumberOfTeams() >
                                                      3
                                                  ? Theme.of(context)
                                                      .textTheme
                                                      .bodyText1
                                                  : const TextStyle(
                                                      color: Colors.grey),
                                          border: InputBorder.none,
                                        ),
                                        textAlign: TextAlign.center,
                                        style: styleTextInputTextField)),
                              ],
                            ),
                          )),
                      const SizedBox(width: 10),
                      Container(
                          width: context.width * 0.24,
                          height: context.height * 0.23,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              border: Border.all(
                                color: kwhite,
                              )),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const SizedBox(
                                  height: 10,
                                ),
                                ButtonAddRemove(
                                    iconData: Icons.add,
                                    height: context.height * 0.06,
                                    width: context.width * 0.11,
                                    onTap: () =>
                                        modelProvider.incrementNumberOfTeams()),
                                SizedBox(
                                  height: context.height * 0.02,
                                ),
                                Text(
                                  modelProvider.getNumberOfTeams().toString(),
                                  maxLines: 1,
                                  style: Theme.of(context).textTheme.bodyText1,
                                ),
                                SizedBox(
                                  height: context.height * 0.02,
                                ),
                                ButtonAddRemove(
                                    iconData: Icons.remove,
                                    height: context.height * 0.06,
                                    width: context.width * 0.11,
                                    onTap: () =>
                                        modelProvider.lowoffNumberOfTeams()),
                                const SizedBox(
                                  height: 10,
                                ),
                              ])),
                    ]),
                    const SizedBox(height: 20),
                    const Divider(),
                    Padding(
                        padding: const EdgeInsets.only(
                            left: 9, right: 9, top: 20, bottom: 10),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                        localApp
                                            .typeOfMatchScreansTextDetailButton,
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodyText1),
                                    Container(
                                      decoration: BoxDecoration(boxShadow: [
                                        BoxShadow(
                                          color:
                                              Colors.white24.withOpacity(0.2),
                                          spreadRadius: 2,
                                          blurRadius: 10,
                                          offset: const Offset(1,
                                              1), // changes position of shadow
                                        ),
                                      ]),
                                      child: CupertinoSlidingSegmentedControl(
                                        thumbColor: kwhite,
                                        backgroundColor: Colors.white24,
                                        children: mytab,
                                        groupValue: selectValue,
                                        onValueChanged: (value) {
                                          setState(() {
                                            selectValue = value as int;
                                            if (value == 0) {
                                              _unsetVisibility();
                                            } else {
                                              _toggleVisibility();
                                            }
                                          });
                                        },
                                      ),
                                    ),
                                  ]),
                              const SizedBox(
                                height: 30,
                              ),
                              Visibility(
                                visible: _viewAuto,
                                child: Text(
                                    localApp
                                        .typeOfMatchScreansTextDetailNameButtonAUTODetail,
                                    style:
                                        Theme.of(context).textTheme.bodyText1),
                              ),
                              Visibility(
                                  visible: _viewCustom,
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Text(
                                          nameTeamTextFiledInput[
                                              modelProvider.getTimeForMatch()],
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodyText2),
                                      const Spacer(),
                                      ButtonAddRemove(
                                          iconData: Icons.add,
                                          height: context.height * 0.06,
                                          width: context.width * 0.11,
                                          onTap: () => modelProvider
                                              .incermentGameTime()),
                                      const SizedBox(width: 20),
                                      ButtonAddRemove(
                                          iconData: Icons.remove,
                                          height: context.height * 0.06,
                                          width: context.width * 0.11,
                                          onTap: () =>
                                              modelProvider.lowoffGameTime())
                                    ],
                                  )),
                              const SizedBox(height: 20),
                              const Divider(),
                              Padding(
                                  padding: const EdgeInsets.only(
                                      top: 10, bottom: 30),
                                  child: Row(
                                    children: [
                                      RichText(
                                          textAlign: TextAlign.center,
                                          text: TextSpan(children: [
                                            TextSpan(
                                                text: localApp
                                                    .typeOfMatchScreansTextDetailForNumberofRounds,
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .bodyText2),
                                            TextSpan(
                                                text: "  " +
                                                    modelProvider
                                                        .getNumberOfRounds()
                                                        .toString(),
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .bodyText2),
                                          ])),
                                      const Spacer(),
                                      ButtonAddRemove(
                                          iconData: Icons.add,
                                          height: context.height * 0.06,
                                          width: context.width * 0.11,
                                          onTap: () => modelProvider
                                              .incermentnumberofrounds()),
                                      const SizedBox(
                                        width: 20,
                                      ),
                                      ButtonAddRemove(
                                          iconData: Icons.remove,
                                          height: context.height * 0.06,
                                          width: context.width * 0.11,
                                          onTap: () => modelProvider
                                              .lowoffnumberofrounds())
                                    ],
                                  )),
                              const Divider(),
                            ])),
                  ],
                ),
              ),
            ),
          )),
    );
  }
}
