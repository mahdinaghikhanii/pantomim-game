import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../generated/l10n.dart';
import '../../models/category.dart';
import '../../module/widgets/choice_boximage_text_select.dart';
import '../../provider/gametheme_provider.dart';
import '../screan/time_screans.dart';

class DialogShow extends StatelessWidget {
  const DialogShow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final modelProvider = Provider.of<TheThemeOfTheGame>(context);
    final size = MediaQuery.of(context).size;

    var localApp = S.of(context);
    List imageListTopic = [
      'assets/images/topic/food.png',
      'assets/images/topic/fotbal.png',
      'assets/images/topic/animal.png',
      'assets/images/topic/movie.png',
      'assets/images/topic/thing.png',
      'assets/images/topic/country.png',
      'assets/images/topic/general.png',
      'assets/images/topic/tourism.png',
      'assets/images/topic/book.png',
      'assets/images/topic/job.png',
      'assets/images/topic/music.png',
      'assets/images/topic/tecnology.png'
    ];
    List nameTopic = [
      localApp.dialogTypeOfMatchbuttontextFood,
      localApp.dialogTypeOfMatchbuttontextSport,
      localApp.dialogTypeOfMatchbuttontextAnimal,
      localApp.dialogTypeOfMatchbuttontextMovie,
      localApp.dialogTypeOfMatchbuttontextThing,
      localApp.dialogTypeOfMatchbuttontextCountry,
      localApp.dialogTypeOfMatchbuttontextGeneral,
      localApp.dialogTypeOfMatchbuttontextTourism,
      localApp.dialogTypeOfMatchbuttontextBook,
      localApp.dialogTypeOfMatchbuttontextjob,
      localApp.dialogTypeOfMatchbuttontextMusic,
      localApp.dialogTypeOfMatchbuttontextTecnology,
    ];

    // ignore: non_constant_identifier_names
    final List<PantomimData> Fruitdata = List.generate(
        imageListTopic.length,
        (index) => PantomimData('${imageListTopic[index]}',
            '${nameTopic[index]}', '${nameTopic[index]}'));

    return Dialog(
      insetPadding:
          const EdgeInsets.only(left: 25, right: 25, top: 50, bottom: 130),
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
              top: -size.height * 0.03,
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    gradient: const LinearGradient(
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                        colors: [Colors.white, Colors.blue])),
                child: RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(children: [
                      TextSpan(
                          text: localApp.dialogChoiceYourScreansTextTileChoose,
                          style: Theme.of(context).textTheme.headline2),
                      TextSpan(
                          text: localApp.dialogChoiceYourScreansTextTileTopic,
                          style: Theme.of(context).textTheme.headline3)
                    ])),
              ),
              width: size.width * 0.64,
              height: size.height * 0.06),
          Padding(
            padding:
                const EdgeInsets.only(left: 0, right: 10, top: 34, bottom: 0),
            child: GridView.builder(
                padding: const EdgeInsets.all(0),
                itemCount: Fruitdata.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    crossAxisSpacing: 0,
                    mainAxisSpacing: 22),
                itemBuilder: (BuildContext context, int index) {
                  return ChoiceTopic(
                      image: Fruitdata[index].image,
                      title: Fruitdata[index].name,
                      onTap: () {
                        modelProvider.setnumberindex(index);

                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const TimerScreans()));
                      });
                }),
          ),
        ],
      ),
    );
  }
}
