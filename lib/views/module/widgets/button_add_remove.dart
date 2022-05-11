import 'package:flutter/material.dart';
import 'package:pantomim/theme/constant.dart';

class ButtonAddRemove extends StatelessWidget {
  final VoidCallback onTap;
  final double width;
  final double height;
  final IconData iconData;

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
      borderRadius: BorderRadius.circular(
        Constans.kBigBorderRadius,
      ),
      onTap: () => onTap,
      child: Container(
          height: height,
          width: width,
          decoration: BoxDecoration(
              shape: BoxShape.circle, border: Border.all(color: kwhite)),
          child: const Icon(Icons.add, color: kwhite)),
    );
  }
}
