// ignore_for_file: file_names

import 'package:flutter/material.dart';

import '../constans/constant.dart';
import '../extension/extension.dart';

class ListTileSettings extends StatelessWidget {
  final String firstText;
  final String? secondText;
  final TextStyle? firstTextStyle;
  final TextStyle? secondTextStyle;
  final VoidCallback? ontap;
  final Color? backGroundColor;

  const ListTileSettings(
      {Key? key,
      required this.firstText,
      this.secondTextStyle,
      this.firstTextStyle,
      this.ontap,
      this.secondText,
      this.backGroundColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      highlightColor: kwhite,
      onTap: ontap,
      child: Container(
        padding: const EdgeInsets.only(right: 15, left: 15),
        width: double.infinity,
        height: 50,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            gradient: LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                colors: [
                  backGroundColor ?? Colors.grey.shade300,
                  backGroundColor ?? const Color.fromARGB(255, 13, 102, 175)
                ])),
        child: Row(
          children: [
            Text(firstText,
                style: firstTextStyle ??
                    context.textTheme.subtitle2!.copyWith(
                        color: kwhite,
                        fontSize: 18,
                        fontWeight: FontWeight.bold)),
            const Spacer(),
            Text(secondText ?? "",
                style: secondTextStyle ??
                    context.textTheme.subtitle2!.copyWith(
                        color: kwhite,
                        fontSize: 18,
                        fontWeight: FontWeight.bold)),
          ],
        ),
      ),
    );
  }
}
