import 'package:flutter/material.dart';
import 'package:pantomim/generated/l10n.dart';
import 'package:pantomim/theme/constant.dart';
import 'package:pantomim/views/widgets/double_floatingac_button.dart';

class DialogWinOrLose extends StatelessWidget {
  const DialogWinOrLose({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    var localApp = S.of(context);

    return Dialog(
        insetPadding:
            const EdgeInsets.only(left: 20, right: 20, top: 40, bottom: 40),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(Constans.padding),
        ),
        elevation: 0,
        backgroundColor: Colors.white,
        child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Stack(
                clipBehavior: Clip.none,
                alignment: Alignment.center,
                children: <Widget>[
                  Container(
                      width: double.infinity,
                      height: size.height * 0.48,
                      decoration: BoxDecoration(
                          gradient: const LinearGradient(
                              begin: Alignment.centerLeft,
                              end: Alignment.centerRight,
                              colors: [Colors.white38, Colors.blue]),
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.white),
                      padding: const EdgeInsets.fromLTRB(20, 50, 20, 20),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 85),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              RichText(
                                  text: TextSpan(children: [
                                TextSpan(
                                  text: localApp.dialogwinorloseTextTextSpan1,
                                  style: Theme.of(context).textTheme.headline5,
                                ),
                                TextSpan(
                                  text: localApp.dialogwinorloseTextTextSpan2,
                                  style: Theme.of(context).textTheme.headline6,
                                ),
                              ])),
                              const SizedBox(
                                height: 50,
                              ),
                              SizedBox(
                                width: size.width,
                                height: size.height * 0.10,
                                child: Row(
                                  children: [
                                    DounleFloattingButton(
                                      colorBtn: Colors.blue,
                                      ontap: () {},
                                      textBtn: 'WIN',
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    DounleFloattingButton(
                                      colorBtn: Colors.transparent,
                                      ontap: () {},
                                      textBtn: 'LOSE',
                                    )
                                  ],
                                ),
                              ),
                            ]),
                      )),
                  Positioned(
                      top: -size.height * 0.16,
                      child: Image.asset(
                        'assets/icons/question.png',
                      ),
                      width: size.width * 0.85,
                      height: size.height * 0.30),
                ])));
  }
}
