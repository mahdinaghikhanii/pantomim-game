import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../generated/l10n.dart';
import '../../theme/constant.dart';
import '../../util/view_models/provider/provider.dart';
import '../auth/home_screans.dart';
import '../module/widgets/double_floatingac_button.dart';

class DialogQuit extends StatelessWidget {
  const DialogQuit({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    var localApp = S.of(context);
    final appProvider = Provider.of<AppProvider>(context);

    return Dialog(
        insetPadding: const EdgeInsets.all(Constans.padding),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(Constans.padding),
        ),
        elevation: 0,
        backgroundColor: dialogSettingColor,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Stack(
              clipBehavior: Clip.none,
              alignment: Alignment.center,
              children: <Widget>[
                SizedBox(
                  width: double.infinity,
                  height: size.height * 0.40,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(Constans.padding),
                        child: RichText(
                          textAlign: TextAlign.center,
                          text: TextSpan(children: [
                            TextSpan(
                                text: localApp.dialogquitTitleTextquit1,
                                style: Theme.of(context).textTheme.headline2),
                            TextSpan(
                                text: localApp.dialogquitTitleTextgame2,
                                style: Theme.of(context).textTheme.subtitle2)
                          ]),
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Text(localApp.dialogquittextTitleAreYourSureQuitgame,
                          style: Theme.of(context).textTheme.bodyText1),
                      const SizedBox(
                        height: 30,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(Constans.padding),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              DounleFloattingButton(
                                ontap: () {
                                  appProvider.reasetvalue();

                                  Navigator.of(context).pushAndRemoveUntil(
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              const HomeScreans()),
                                      (Route<dynamic> route) => false);
                                },
                                colorBtn: kblue,
                                textBtn: localApp.dialogquitQuitgame,
                                highlightColor: Colors.transparent,
                              ),
                              DounleFloattingButton(
                                  ontap: () {
                                    Navigator.pop(context);
                                  },
                                  colorBtn: Colors.transparent,
                                  textBtn: localApp.dialogquitbtnTextNoPlaying,
                                  highlightColor: Colors.transparent)
                            ]),
                      ),
                    ],
                  ),
                ),
              ]),
        ));
  }
}
