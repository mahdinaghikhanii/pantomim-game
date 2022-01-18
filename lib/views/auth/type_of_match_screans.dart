import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pantomim/generated/l10n.dart';
import 'package:pantomim/module/pantomim_data.dart';
import 'package:pantomim/theme/constant.dart';
import 'package:pantomim/views/widgets/choice_boximage_text_select.dart';
import 'package:pantomim/views/dialog_screns/dialog_choice_your_topic.dart';

class ChoiceYourTopic extends StatefulWidget {
  const ChoiceYourTopic({Key? key}) : super(key: key);

  @override
  State<ChoiceYourTopic> createState() => _ChoiceYourTopicState();
}

bool viewVisibleButton = false;
int selectValue = 0;
bool _viewAuto = true;
bool _viewCustom = true;
Function? function;

class _ChoiceYourTopicState extends State<ChoiceYourTopic> {
  _unsetVisibility() {
    setState(() {
      _viewAuto = true;
      _viewCustom = false;
    });
  }

  _toggleVisibility() {
    setState(() {
      _viewAuto = false;
      _viewCustom = true;
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    if (selectValue == 0) {
      _viewCustom = false;
    }
    ;
  }
  // ignore: non_constant_identifier_names

  @override
  Widget build(BuildContext context) {
    final Map<int, Widget> mytab = <int, Widget>{
      0: Text('AUTO', style: styleCupertinoSlidingSegmentedControl),
      1: Text('CUSTOM', style: styleCupertinoSlidingSegmentedControl),
    };
    var localApp = S.of(context);

    final size = MediaQuery.of(context).size;

    return Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: [Colors.white38, Colors.blue])),
      child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Container(
            child: SafeArea(
              child: Padding(
                padding: const EdgeInsets.all(Constans.padding),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    RichText(
                      text: TextSpan(children: [
                        TextSpan(
                            text: "START",
                            style: Theme.of(context).textTheme.headline2),
                        TextSpan(
                            text: " NEWGAME",
                            style: Theme.of(context).textTheme.headline2)
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
                          height: size.height * 0.22,
                          child: Center(
                            child: Wrap(
                              crossAxisAlignment: WrapCrossAlignment.end,
                              children: [
                                Container(
                                    padding: EdgeInsets.all(8),
                                    color: Colors.transparent,
                                    width: size.width * 0.30,
                                    height: size.height * 0.10,
                                    child: TextField(
                                      decoration: InputDecoration(
                                        border: InputBorder.none,
                                        hintText: "Team 1",
                                        hintStyle: Theme.of(context)
                                            .textTheme
                                            .bodyText1,
                                      ),
                                      textAlign: TextAlign.center,
                                    )),
                                Container(
                                    padding: EdgeInsets.all(8),
                                    color: Colors.transparent,
                                    width: size.width * 0.30,
                                    height: size.height * 0.10,
                                    child: TextField(
                                      decoration: InputDecoration(
                                        hintText: "Team 2",
                                        hintStyle: Theme.of(context)
                                            .textTheme
                                            .bodyText1,
                                        border: InputBorder.none,
                                      ),
                                      textAlign: TextAlign.center,
                                    )),
                                Container(
                                    padding: EdgeInsets.all(8),
                                    color: Colors.transparent,
                                    width: size.width * 0.30,
                                    height: size.height * 0.10,
                                    child: TextField(
                                      decoration: InputDecoration(
                                        hintText: "Team 3",
                                        hintStyle: Theme.of(context)
                                            .textTheme
                                            .bodyText1,
                                        border: InputBorder.none,
                                      ),
                                      textAlign: TextAlign.center,
                                    )),
                                Container(
                                    padding: EdgeInsets.all(8),
                                    color: Colors.transparent,
                                    width: size.width * 0.30,
                                    height: size.height * 0.10,
                                    child: TextField(
                                      decoration: InputDecoration(
                                        hintText: "Team 4",
                                        hintStyle: Theme.of(context)
                                            .textTheme
                                            .bodyText1,
                                        border: InputBorder.none,
                                      ),
                                      textAlign: TextAlign.center,
                                    )),
                              ],
                            ),
                          )),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                          width: size.width * 0.24,
                          height: size.height * 0.22,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              border: Border.all(
                                color: kwhite,
                              )),
                          child: Column(children: [
                            const SizedBox(
                              height: 10,
                            ),
                            Container(
                                height: size.height * 0.06,
                                width: size.width * 0.18,
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    border: Border.all(color: kwhite)),
                                child: Icon(Icons.add, color: kwhite)),
                            SizedBox(
                              height: size.height * 0.02,
                            ),
                            Text(
                              '2',
                              style: Theme.of(context).textTheme.bodyText1,
                            ),
                            SizedBox(
                              height: size.height * 0.02,
                            ),
                            Container(
                                height: size.height * 0.06,
                                width: size.width * 0.18,
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    border: Border.all(color: kwhite)),
                                child: Icon(Icons.remove, color: kwhite)),
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
                            left: 9, right: 9, top: 10, bottom: 10),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text('TIME GAME',
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
                                child: Text('To the difficulty of the word ',
                                    style:
                                        Theme.of(context).textTheme.bodyText1),
                              ),
                              Visibility(
                                  visible: _viewCustom,
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      RichText(
                                          text: TextSpan(children: [
                                        TextSpan(
                                            text: '5 ',
                                            style: Theme.of(context)
                                                .textTheme
                                                .bodyText2),
                                        TextSpan(
                                            text: 'minuts 40 secounds',
                                            style: Theme.of(context)
                                                .textTheme
                                                .bodyText2),
                                      ])),
                                      Container(
                                          height: size.height * 0.06,
                                          width: size.width * 0.12,
                                          decoration: BoxDecoration(
                                              shape: BoxShape.circle,
                                              border:
                                                  Border.all(color: kwhite)),
                                          child: const Icon(Icons.add,
                                              color: kwhite)),
                                      Container(
                                          height: size.height * 0.06,
                                          width: size.width * 0.12,
                                          decoration: BoxDecoration(
                                              shape: BoxShape.circle,
                                              border:
                                                  Border.all(color: kwhite)),
                                          child: const Icon(Icons.remove,
                                              color: kwhite)),
                                    ],
                                  )),
                              const SizedBox(
                                height: 15,
                              ),
                              const Divider(),
                              Padding(
                                  padding: EdgeInsets.only(top: 10, bottom: 30),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text('Number of Rounds      '),
                                      Container(
                                          height: size.height * 0.06,
                                          width: size.width * 0.12,
                                          decoration: BoxDecoration(
                                              shape: BoxShape.circle,
                                              border:
                                                  Border.all(color: kwhite)),
                                          child: const Icon(Icons.add,
                                              color: kwhite)),
                                      Container(
                                          height: size.height * 0.06,
                                          width: size.width * 0.12,
                                          decoration: BoxDecoration(
                                              shape: BoxShape.circle,
                                              border:
                                                  Border.all(color: kwhite)),
                                          child: const Icon(Icons.remove,
                                              color: kwhite)),
                                    ],
                                  ))
                            ])),
                  ],
                ),
              ),
            ),
          )),
    );
  }
}
