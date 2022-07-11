import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher_string.dart';

import '../../module/constans/constant.dart';
import '../../module/widgets/listTile_settings.dart';

class SettingDialog extends StatelessWidget {
  const SettingDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

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
                height: size.height * 0.40,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.white),
                padding: const EdgeInsets.fromLTRB(20, 50, 20, 20),
                child: Padding(
                  padding: const EdgeInsets.only(top: 30),
                  child: Column(
                    children: [
                      // this part for change language application
                      /* Expanded(
                                  child: DropdownButtonHideUnderline(
                                child: ButtonTheme(
                                    alignedDropdown: true,
                                    child: const DropDownWidgets()),
                              ))*/
                      ListTileSettings(
                          text: "در مورد توسعه دهنده",
                          ontap: () async {
                            await launchUrlString(Constans.myWebSiteAddres);
                          }),
                      const SizedBox(height: 15),

                      const ListTileSettings(text: "پاک کردن سابقه بازی")
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
