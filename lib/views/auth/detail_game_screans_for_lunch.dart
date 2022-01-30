import 'package:flutter/material.dart';
import 'package:pantomim/module/typeof_match_provider.dart';
import 'package:pantomim/theme/constant.dart';
import 'package:pantomim/views/auth/type_of_match_screans.dart';
import 'package:pantomim/views/dialog_screns/dialog_choice_your_topic.dart';
import 'package:pantomim/views/dialog_screns/dialog_quit.dart';
import 'package:pantomim/views/widgets/double_floatingac_button.dart';
import 'package:provider/provider.dart';

class DetailGameScreans extends StatelessWidget {
  const DetailGameScreans({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final modelProvider = Provider.of<ModelTypeOfMatch>(context);

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
                      child: RichText(
                          text: TextSpan(children: [
                    TextSpan(
                        text: "Rounds ",
                        style: Theme.of(context).textTheme.bodyText1),
                    TextSpan(
                        text: modelProvider.getCounterMatch().toString(),
                        style: Theme.of(context).textTheme.bodyText1),
                    TextSpan(
                        text: " in 1",
                        style: Theme.of(context).textTheme.bodyText1),
                  ]))),
                ),
              ),
            ),
            const Divider(),
            Padding(
              padding: EdgeInsets.all(Constans.padding),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
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
