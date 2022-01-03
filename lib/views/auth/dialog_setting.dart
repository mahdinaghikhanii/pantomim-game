import 'package:flutter/material.dart';
import 'package:pantomim/theme/constant.dart';

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
    },
    {
      'id': '2',
      'image': 'assets/images/topic/country.png',
      'name': 'Persian',
    }
  ];
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Dialog(
        insetPadding: EdgeInsets.all(20),
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
                padding: EdgeInsets.fromLTRB(20, 50, 20, 20),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 20),
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
                                      hint: const Text('Select Language',
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
                  width: 150,
                  height: 150),
              Padding(
                padding: const EdgeInsets.only(left: 40),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Music', style: styleTextForSetting),
                    Spacer(),
                    Padding(
                      padding: const EdgeInsets.only(right: 20.0),
                      child: Container(
                          child: Icon(
                        Icons.music_note,
                        size: 30,
                      )),
                    )
                  ],
                ),
              )
            ]));
  }
}
