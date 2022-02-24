import 'package:flutter/material.dart';

class DialogFinishidGame extends StatelessWidget {
  const DialogFinishidGame({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Dialog(
        insetPadding:
            const EdgeInsets.only(left: 25, right: 25, top: 120, bottom: 150),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(45),
        ),
        elevation: 0,
        backgroundColor: const Color(0xFFEEEEEE),
        child: Stack(
            clipBehavior: Clip.none,
            alignment: Alignment.center,
            children: <Widget>[
              Positioned(
                  top: -size.height * 0.10,
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.transparent),
                    child: Image.asset(
                      'assets/images/medal.png',
                      width: 200,
                      height: 200,
                    ),
                  ))
            ]));
  }
}
