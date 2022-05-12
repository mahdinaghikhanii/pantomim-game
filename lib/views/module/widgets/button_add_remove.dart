import 'package:flutter/material.dart';

import '../../../theme/constant.dart';

class ButtonAddRemove extends StatelessWidget {
  final Function()? onTap;
  final double width;
  final double height;
  final IconData? iconData;

  const ButtonAddRemove(
      {required this.onTap,
      required this.height,
      required this.width,
      required this.iconData,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(
        Constans.kBigBorderRadius,
      ),
      child: Container(
          height: height,
          width: width,
          decoration: BoxDecoration(
              shape: BoxShape.circle, border: Border.all(color: kwhite)),
          child: Icon(iconData, color: kwhite)),
    );
  }
}
