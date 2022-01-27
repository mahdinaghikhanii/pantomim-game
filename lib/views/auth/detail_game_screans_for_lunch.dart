import 'package:flutter/material.dart';
import 'package:pantomim/theme/constant.dart';
import 'package:pantomim/views/auth/type_of_match_screans.dart';
import 'package:pantomim/views/dialog_screns/dialog_choice_your_topic.dart';
import 'package:pantomim/views/dialog_screns/dialog_quit.dart';
import 'package:pantomim/views/widgets/double_floatingac_button.dart';

class DetailGameScreans extends StatelessWidget {
  const DetailGameScreans({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: [Colors.white38, Colors.blue])),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        floatingActionButton:
            Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
          DounleFloattingButton(
              ontap: () {
                showDialog(
                    context: context,
                    builder: (
                      context,
                    ) =>
                        const DialogQuit());
              },
              colorBtn: kblue,
              textBtn: 'QUIT GAME'),
          DounleFloattingButton(
              ontap: () {
                showDialog(
                    context: context, builder: (context) => DialogShow());
              },
              colorBtn: Colors.transparent,
              textBtn: 'LETS GO !')
        ]),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SafeArea(
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.all(Constans.padding),
                  child: Container(
                    child: Text(
                      'Rounds 1 in 3',
                    ),
                  ),
                ),
              ),
            ),
            Divider(),
            Padding(
              padding: EdgeInsets.all(Constans.padding),
              child: Column(
                children: [
                  Row(
                    children: [
                      const Text(
                        'Name Teams',
                      ),
                      Spacer(),
                      Text('Emtiaz')
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
