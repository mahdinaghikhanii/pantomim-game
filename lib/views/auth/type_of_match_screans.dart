import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pantomim/generated/l10n.dart';
import 'package:pantomim/util/view_models/provider/provider.dart';
import 'package:pantomim/theme/constant.dart';
import 'package:pantomim/views/auth/detail_game_screans_for_lunch.dart';
import 'package:pantomim/views/widgets/double_floatingac_button.dart';
import 'package:provider/src/provider.dart';

class ChoiceYourTopic extends StatefulWidget {
  const ChoiceYourTopic({Key? key}) : super(key: key);

  @override
  State<ChoiceYourTopic> createState() => _ChoiceYourTopicState();
}

bool viewVisibleButton = false;
int selectValue = 0;
bool _viewAuto = true;
bool _viewCustom = true;
int _counter = 2;

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
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => DetailGameScreans()));
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
  // ignore: non_constant_identifier_names

  @override
  Widget build(BuildContext context) {
    var localApp = S.of(context);
    final size = MediaQuery.of(context).size;
    final modelProvider = Provider.of<AppProvider>(context);

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
    // modelProvider
    //   .timeScrans(nameTeamTextFiledInput[modelProvider.getTimeForMatch()]);

    final Map<int, Widget> mytab = <int, Widget>{
      0: Text(localApp.typeOfMatchScreansTextDetailNameButtonAUTO,
          style: Theme.of(context).textTheme.headline4),
      1: Text(localApp.typeOfMatchScreansTextDetailNameButtonCUSTOM,
          style: Theme.of(context).textTheme.headline4),
    };

    return Container(
      decoration: backgroundDefaultScafold,
      child: Scaffold(
          resizeToAvoidBottomInset: false,
          floatingActionButton:
              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
            DounleFloattingButton(
              ontap: () {
                _backPage();
              },
              colorBtn: kblue,
              textBtn: localApp.typeOfMatchScreansButtonBACKPAGE,
              highlightColor: Colors.transparent,
            ),
            DounleFloattingButton(
              ontap: () {
                _nextPage();
              },
              colorBtn: Colors.transparent,
              textBtn: localApp.typeOfMatchScreansButtonNextPage,
              highlightColor: Colors.transparent,
            )
          ]),
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
                      height: size.height * 0.04,
                    ),
                    Row(children: [
                      Container(
                          decoration: BoxDecoration(
                              border: Border.all(color: kwhite),
                              borderRadius: BorderRadius.circular(15)),
                          width: size.width * 0.62,
                          height: size.height * 0.23,
                          child: Center(
                            child: Wrap(
                              crossAxisAlignment: WrapCrossAlignment.end,
                              children: [
                                Container(
                                    padding: const EdgeInsets.all(10),
                                    color: Colors.transparent,
                                    width: size.width * 0.30,
                                    height: size.height * 0.10,
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
                                    width: size.width * 0.30,
                                    height: size.height * 0.10,
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
                                    width: size.width * 0.30,
                                    height: size.height * 0.10,
                                    child: TextField(
                                        onChanged: (String value) {
                                          modelProvider.changeNameTeams3(value);
                                        },
                                        decoration: InputDecoration(
                                          enabled:
                                              modelProvider.getCounterMatch() >
                                                      2
                                                  ? true
                                                  : false,
                                          floatingLabelStyle:
                                              styleTextInputTextField,
                                          hintText: localApp
                                              .typeOfMatchScreansTextFiledInputTeam3,
                                          hintStyle:
                                              modelProvider.getCounterMatch() >
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
                                    width: size.width * 0.30,
                                    height: size.height * 0.10,
                                    child: TextField(
                                        enabled:
                                            modelProvider.getCounterMatch() > 3
                                                ? true
                                                : false,
                                        onChanged: (String value) {
                                          modelProvider.changeNameTeams4(value);
                                        },
                                        decoration: InputDecoration(
                                          hintText: localApp
                                              .typeOfMatchScreansTextFiledInputTeam4,
                                          hintStyle:
                                              modelProvider.getCounterMatch() >
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
                      const SizedBox(
                        width: 10,
                      ),
                      Container(
                          width: size.width * 0.24,
                          height: size.height * 0.23,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              border: Border.all(
                                color: kwhite,
                              )),
                          child: Column(children: [
                            const SizedBox(
                              height: 10,
                            ),
                            InkWell(
                              onTap: context.read<AppProvider>().increment,
                              borderRadius: BorderRadius.circular(50),
                              child: Container(
                                  height: size.height * 0.06,
                                  width: size.width * 0.18,
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      border: Border.all(color: kwhite)),
                                  child: const Icon(Icons.add, color: kwhite)),
                            ),
                            SizedBox(
                              height: size.height * 0.02,
                            ),
                            Text(
                              modelProvider.getCounterMatch().toString(),
                              maxLines: 1,
                              style: Theme.of(context).textTheme.bodyText1,
                            ),
                            SizedBox(
                              height: size.height * 0.02,
                            ),
                            InkWell(
                              onTap: () => modelProvider.lowoff(),
                              borderRadius: BorderRadius.circular(50),
                              child: Container(
                                  height: size.height * 0.06,
                                  width: size.width * 0.18,
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      border: Border.all(color: kwhite)),
                                  child:
                                      const Icon(Icons.remove, color: kwhite)),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                          ])),
                    ]),
                    const SizedBox(
                      height: 20,
                    ),
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
                                              // _unsetVisibility();
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
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                          nameTeamTextFiledInput[
                                              modelProvider.getTimeForMatch()],
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodyText2),
                                      const Spacer(),
                                      InkWell(
                                        onTap: () =>
                                            modelProvider.incermentstring(),
                                        child: Container(
                                            height: size.height * 0.06,
                                            width: size.width * 0.12,
                                            decoration: BoxDecoration(
                                                shape: BoxShape.circle,
                                                border:
                                                    Border.all(color: kwhite)),
                                            child: const Icon(Icons.add,
                                                color: kwhite)),
                                      ),
                                      const SizedBox(width: 20),
                                      InkWell(
                                        onTap: () =>
                                            modelProvider.lowoffstring(),
                                        child: Container(
                                            height: size.height * 0.06,
                                            width: size.width * 0.12,
                                            decoration: BoxDecoration(
                                                shape: BoxShape.circle,
                                                border:
                                                    Border.all(color: kwhite)),
                                            child: const Icon(Icons.remove,
                                                color: kwhite)),
                                      ),
                                    ],
                                  )),
                              const SizedBox(
                                height: 20,
                              ),
                              const Divider(),
                              Padding(
                                  padding: const EdgeInsets.only(
                                      top: 10, bottom: 30),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      RichText(
                                          text: TextSpan(children: [
                                        TextSpan(
                                            text: localApp
                                                .typeOfMatchScreansTextDetailForNumberofRounds,
                                            style: Theme.of(context)
                                                .textTheme
                                                .bodyText2),
                                        WidgetSpan(
                                            child: Container(
                                          padding:
                                              const EdgeInsets.only(right: 10),
                                          child: Text(
                                              modelProvider
                                                  .getNumberOfRounds()
                                                  .toString(),
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .bodyText2),
                                        )),
                                      ])),
                                      const Spacer(),
                                      InkWell(
                                        onTap: () => modelProvider
                                            .incermentnumberofrounds(),
                                        child: Container(
                                            height: size.height * 0.06,
                                            width: size.width * 0.12,
                                            decoration: BoxDecoration(
                                                shape: BoxShape.circle,
                                                border:
                                                    Border.all(color: kwhite)),
                                            child: const Icon(Icons.add,
                                                color: kwhite)),
                                      ),
                                      const SizedBox(
                                        width: 20,
                                      ),
                                      InkWell(
                                        onTap: () => modelProvider
                                            .lowoffnumberofrounds(),
                                        child: Container(
                                            height: size.height * 0.06,
                                            width: size.width * 0.12,
                                            decoration: BoxDecoration(
                                                shape: BoxShape.circle,
                                                border:
                                                    Border.all(color: kwhite)),
                                            child: const Icon(Icons.remove,
                                                color: kwhite)),
                                      ),
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
