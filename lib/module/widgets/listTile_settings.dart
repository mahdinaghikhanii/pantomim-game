// ignore_for_file: file_names
import 'package:flutter/material.dart';

import '../constans/constant.dart';
import '../extension/extension.dart';

class ListTileSettings extends StatelessWidget {
  final String text;
  final VoidCallback? ontap;
  const ListTileSettings({Key? key, required this.text, this.ontap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      highlightColor: kred,
      onTap: ontap,
      child: Container(
        padding: const EdgeInsets.only(right: 15),
        width: double.infinity,
        height: 50,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            gradient: LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                colors: [
                  Colors.grey.shade300,
                  const Color.fromARGB(255, 13, 102, 175)
                ])),
        child: Row(
          children: [
            Text(text,
                style: context.textTheme.subtitle2!.copyWith(
                    color: kwhite, fontSize: 18, fontWeight: FontWeight.bold))
          ],
        ),
      ),
    );
  }
}
