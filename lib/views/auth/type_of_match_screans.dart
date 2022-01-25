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
int _counter = 2;

class _ChoiceYourTopicState extends State<ChoiceYourTopic> {
  //This state for plus number
  _counterPlus() {
    setState(() {
      if (_counter > 3) {
        _counter;
      } else {
        _counter++;
      }
    });
  }

//this state for nagative state
  _counterNagative() {
    setState(() {
      if (_counter == 2) {
        _counter;
      } else {
        _counter--;
      }
    });
  }

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
    showDialog(
        builder: (BuildContext context) {
          return DialogShow();
        },
        context: context);
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
    var localApp = S.of(context);
    final Map<int, Widget> mytab = <int, Widget>{
      0: Text(localApp.typeOfMatchScreansTextDetailNameButtonAUTO,
          style: styleCupertinoSlidingSegmentedControl),
      1: Text(localApp.typeOfMatchScreansTextDetailNameButtonCUSTOM,
          style: styleCupertinoSlidingSegmentedControl),
    };

    final size = MediaQuery.of(context).size;

    return Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: [Colors.white38, Colors.blue])),
      child: Scaffold(
          floatingActionButton:
              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
            InkWell(
              borderRadius: BorderRadius.circular(20),
              onTap: _backPage,
              child: Container(
                  width: size.width * 0.35,
                  height: size.height * 0.08,
                  decoration: BoxDecoration(
                      color: kblue, borderRadius: BorderRadius.circular(20)),
                  // ignore: prefer_const_constructors
                  child: Center(
                      // ignore: prefer_const_constructors
                      child: Text(
                    localApp.typeOfMatchScreansButtonBACKPAGE,
                    style: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 16),
                  ))),
            ),
            InkWell(
              borderRadius: BorderRadius.circular(20),
              onTap: () {
                _nextPage();
              },
              child: Container(
                  width: size.width * 0.26,
                  height: size.height * 0.08,
                  decoration: BoxDecoration(
                      color: Colors.transparent,
                      borderRadius: BorderRadius.circular(20)),
                  // ignore: prefer_const_constructors
                  child: Center(
                      // ignore: prefer_const_constructors
                      child: Text(
                    localApp.typeOfMatchScreansButtonNextPage,
                    style: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 16),
                  ))),
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
                                        decoration: InputDecoration(
                                          floatingLabelStyle:
                                              styleTextInputTextField,
                                          hintText: localApp
                                              .typeOfMatchScreansTextFiledInputTeam3,
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
                                        decoration: InputDecoration(
                                          hintText: localApp
                                              .typeOfMatchScreansTextFiledInputTeam4,
                                          hintStyle: Theme.of(context)
                                              .textTheme
                                              .bodyText1,
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
                              onTap: _counterPlus,
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
                              _counter.toString(),
                              maxLines: 1,
                              style: Theme.of(context).textTheme.bodyText1,
                            ),
                            SizedBox(
                              height: size.height * 0.02,
                            ),
                            InkWell(
                              onTap: _counterNagative,
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
                                      const Spacer(),
                                      Container(
                                          height: size.height * 0.06,
                                          width: size.width * 0.12,
                                          decoration: BoxDecoration(
                                              shape: BoxShape.circle,
                                              border:
                                                  Border.all(color: kwhite)),
                                          child: const Icon(Icons.add,
                                              color: kwhite)),
                                      const SizedBox(width: 20),
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
                                          padding: EdgeInsets.only(right: 10),
                                          child: Text("1",
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .bodyText2),
                                        )),
                                      ])),
                                      const Spacer(),
                                      Container(
                                          height: size.height * 0.06,
                                          width: size.width * 0.12,
                                          decoration: BoxDecoration(
                                              shape: BoxShape.circle,
                                              border:
                                                  Border.all(color: kwhite)),
                                          child: const Icon(Icons.add,
                                              color: kwhite)),
                                      const SizedBox(
                                        width: 20,
                                      ),
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
