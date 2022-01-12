import 'package:flutter/material.dart';
import 'package:pantomim/generated/l10n.dart';
import 'package:pantomim/module/language_provider.dart';
import 'package:pantomim/theme/constant.dart';
import 'package:provider/src/provider.dart';

import '../../constants.dart';

class SettingDialog extends StatefulWidget {
  const SettingDialog({Key? key}) : super(key: key);

  @override
  State<SettingDialog> createState() => _SettingDialogState();
}

class _SettingDialogState extends State<SettingDialog> {
  String? _select;
  List<Map> myJson = [
    {
      'id': '1',
      'image': 'assets/images/usa.png',
      'name': 'English',
      'ontap': 'en',
    },
    {
      'id': '2',
      'image': 'assets/images/topic/country.png',
      'name': 'Persian',
      'ontap': 'fa'
    }
  ];

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    var localApp = S.of(context);
    return Dialog(
        insetPadding: const EdgeInsets.all(20),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(Constants.padding),
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
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 40),
                      child: Center(
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              gradient: const LinearGradient(
                                  begin: Alignment.centerLeft,
                                  end: Alignment.centerRight,
                                  colors: [Colors.white38, Colors.blue])),
                          child: Row(
                            children: [
                              Expanded(
                                  child: DropdownButtonHideUnderline(
                                child: ButtonTheme(
                                  alignedDropdown: true,
                                  child: DropdownButton(
                                      hint: Text(
                                          localApp.dialogSettingsSelectLanguage,
                                          style: styleTextForSetting),
                                      value: _select,
                                      onChanged: (newValue) {
                                        setState(() {
                                          _select = newValue.toString();
                                        });
                                      },
                                      items: myJson.map((bankIteam) {
                                        return DropdownMenuItem(
                                            value: bankIteam['id'].toString(),
                                            onTap: () {
                                              context
                                                  .read<
                                                      LanguageChangeProvider>()
                                                  .changeLocale(
                                                      bankIteam['ontap']);
                                            },
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Image.asset(
                                                  bankIteam['image'],
                                                  width: 25,
                                                ),
                                                Container(
                                                  margin: const EdgeInsets.only(
                                                      left: 10),
                                                  child:
                                                      Text(bankIteam['name']),
                                                )
                                              ],
                                            ));
                                      }).toList()),
                                ),
                              ))
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Positioned(
                  top: -size.height * 0.12,
                  child: Image.asset('assets/images/setting.png'),
                  width: size.width * 0.55,
                  height: size.height * 0.17),
              Padding(
                padding: const EdgeInsets.only(left: 40, right: 30, top: 50),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    Text(localApp.dialogSettingsMusick,
                        style: styleTextForSetting),
                    const Spacer(),
                    const Icon(
                      Icons.music_note,
                      size: 30,
                    ),
                  ],
                ),
              ),
            ]));
  }
}
