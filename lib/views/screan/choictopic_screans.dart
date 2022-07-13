import 'package:flutter/material.dart';
import 'package:pantomim/generated/l10n.dart';
import 'package:pantomim/models/category.dart';
import 'package:pantomim/module/constans/constant.dart';
import 'package:pantomim/module/extension/extension.dart';
import 'package:pantomim/module/widgets/choice_boximage_text_select.dart';
import 'package:pantomim/provider/gametheme_provider.dart';
import 'package:pantomim/views/screan/time_screans.dart';
import 'package:provider/provider.dart';

class ChoiceTopicScreans extends StatelessWidget {
  const ChoiceTopicScreans({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final modelProvider = Provider.of<TheThemeOfTheGame>(context);

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

    return Container(
      decoration: backgroundDefaultScafoldForOnBoard,
      child: Scaffold(
          appBar: AppBar(
            title: Text('موضوع بازی را انتخاب کنید',
                style: context.textTheme.subtitle2!.copyWith(fontSize: 24)),
            elevation: 0,
            automaticallyImplyLeading: false,
            leading: Padding(
              padding: const EdgeInsets.only(
                  left: Constans.smallPading, right: Constans.smallPading),
              child: IconButton(
                  onPressed: () => context.backScreans(),
                  icon: const Icon(Icons.arrow_back)),
            ),
            backgroundColor: Colors.transparent,
          ),
          backgroundColor: Colors.transparent,
          body: SafeArea(
            child: Padding(
              padding: const EdgeInsets.only(
                  left: Constans.padding, right: Constans.padding),
              child: Column(children: [
                const SizedBox(height: 20),
                Expanded(
                  child: GridView.builder(
                      padding: const EdgeInsets.all(0),
                      itemCount: Fruitdata.length,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 3,
                              crossAxisSpacing: 12,
                              mainAxisExtent: 150,
                              mainAxisSpacing: 10),
                      itemBuilder: (BuildContext context, int index) {
                        return ChoiceTopic(
                            image: Fruitdata[index].image,
                            title: Fruitdata[index].name,
                            onTap: () {
                              modelProvider.setnumberindex(index);

                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const TimerScreans()));
                            });
                      }),
                ),
              ]),
            ),
          )),
    );
  }
}
