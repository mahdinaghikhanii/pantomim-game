import 'package:flutter/material.dart';
import 'package:pantomim/provider/provider.dart';
import 'package:pantomim/views/module/constans/constant.dart';
import 'package:pantomim/views/module/extension/extension.dart';
import 'package:provider/provider.dart';

class DropDownWidgets extends StatelessWidget {
  const DropDownWidgets({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Map> myJson = [
      {
        'id': '1',
        'image': 'assets/images/country/usa.png',
        'name': 'English',
        'ontap': 'en',
      },
      {
        'id': '2',
        'image': 'assets/images/country/iran.png',
        'name': 'فارسی',
        'ontap': 'fa'
      }
    ];

    return DropdownButton(
        hint: Text(context.localApp.dialogSettingsSelectLanguage,
            style: styleTextForSetting),
        onChanged: (newValue) {},
        items: myJson.map((bankIteam) {
          return DropdownMenuItem(
              value: bankIteam['id'].toString(),
              onTap: () {
                (bankIteam['ontap']);
                context.read<AppProvider>().changeLanguage(bankIteam['ontap']);
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(
                    bankIteam['image'],
                    width: 25,
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 10, right: 10),
                    child: Text(bankIteam['name'],
                        style: dropwdownTextDialogSetting),
                  )
                ],
              ));
        }).toList());
  }
}
