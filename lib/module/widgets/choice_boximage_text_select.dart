import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

class ChoiceTopic extends StatelessWidget {
  final Function() onTap;
  final String title;
  final String image;

  const ChoiceTopic({
    Key? key,
    required this.onTap,
    required this.title,
    required this.image,
  }) : super(key: key);

  @override
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return FadeInLeftBig(
      duration: const Duration(seconds: 1),
      child: InkWell(
        borderRadius: BorderRadius.circular(12),
        onTap: onTap,
        child: Column(
          children: [
            Container(
              width: size.width * 0.30,
              height: size.height * 0.12,
              decoration: BoxDecoration(
                color: Colors.black38.withOpacity(0.2),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      image,
                      width: size.width * 0.16,
                      height: size.height * 0.08,
                      fit: BoxFit.fill,
                    ),
                    const SizedBox(height: 10),
                  ]),
            ),
            const SizedBox(height: 15),
            Text(title,
                style: Theme.of(context).textTheme.button!.copyWith(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 15))
          ],
        ),
      ),
    );
  }
}
