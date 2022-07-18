import 'package:flutter/material.dart';

import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher_string.dart';

import '../../module/constans/constant.dart';
import '../../module/extension/extension.dart';
import '../../module/widgets/listTile_settings.dart';
import '../../perfs/history.dart';

class SettingDialog extends StatelessWidget {
  const SettingDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final historyProvider = Provider.of<History>(context);
    final size = MediaQuery.of(context).size;

    int numberAllOfGame = historyProvider.getNumberAllRoundsGmae();

    return Dialog(
        insetPadding: const EdgeInsets.all(20),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(Constans.padding),
        ),
        elevation: 0,
        backgroundColor: Colors.transparent,
        child: Stack(
            clipBehavior: Clip.none,
            alignment: Alignment.center,
            children: <Widget>[
              Container(
                width: double.infinity,
                height: size.height * 0.45,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.white),
                padding: const EdgeInsets.fromLTRB(20, 50, 20, 20),
                child: Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      const ListTileSettings(firstText: "ثبت پیشنهاد و نظر"),
                      const SizedBox(height: 10),
                      ListTileSettings(
                          firstText: "در مورد توسعه دهنده",
                          ontap: () async {
                            await launchUrlString(Constans.myWebSiteAddres);
                          }),
                      const SizedBox(height: 10),
                      ListTileSettings(
                          firstText: "پاک کردن سابقه بازی",
                          ontap: () {
                            historyProvider.cleanNumberOfAllGame();
                          }),
                      const SizedBox(height: 10),
                      ListTileSettings(
                        firstTextStyle: context.textTheme.subtitle2!.copyWith(
                            color: kblue,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                        firstText: "سابقه همه بازی ها",
                        secondText: numberAllOfGame.toString(),
                        secondTextStyle: context.textTheme.subtitle2!.copyWith(
                            color: kblue,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                        backGroundColor: Colors.white,
                      ),
                      //    SizedBox(height: 20)
                    ],
                  ),
                ),
              ),
              Positioned(
                  top: -size.height * 0.12,
                  child: Image.asset('assets/images/setting.png'),
                  width: size.width * 0.55,
                  height: size.height * 0.17),
            ]));
  }
}
