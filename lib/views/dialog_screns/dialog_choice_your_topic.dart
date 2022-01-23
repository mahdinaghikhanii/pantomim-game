import 'package:flutter/material.dart';
import 'package:pantomim/generated/l10n.dart';
import 'package:pantomim/module/pantomim_data.dart';
import 'package:pantomim/theme/constant.dart';
import 'package:pantomim/views/auth/time_screans.dart';
import 'package:pantomim/views/widgets/choice_boximage_text_select.dart';

class DialogShow extends StatelessWidget {
  // final PantomimData pantomimData;
  //const DialogShow({Key? key, required this.pantomimData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context);

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
      localApp.dialogTypeOfMatchbuttontextAnimal,
      localApp.dialogTypeOfMatchbuttontextSport,
      localApp.dialogTypeOfMatchbuttontextFood,
      localApp.dialogTypeOfMatchbuttontextCountry,
      localApp.dialogTypeOfMatchbuttontextThing,
      localApp.dialogTypeOfMatchbuttontextMovie,
      localApp.dialogTypeOfMatchbuttontextBook,
      localApp.dialogTypeOfMatchbuttontextTourism,
      localApp.dialogTypeOfMatchbuttontextGeneral,
      localApp.dialogTypeOfMatchbuttontextTecnology,
      localApp.dialogTypeOfMatchbuttontextMusic,
      localApp.dialogTypeOfMatchbuttontextjob
    ];
    // ignore: non_constant_identifier_names
    final List<PantomimData> Fruitdata = List.generate(
        imageListTopic.length,
        (index) => PantomimData('${imageListTopic[index]}',
            '${nameTopic[index]}', '${nameTopic[index]}'));

    return Dialog(
      insetPadding:
          const EdgeInsets.only(left: 20, right: 20, top: 40, bottom: 40),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(Constans.padding),
      ),
      elevation: 0,
      backgroundColor: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(0.1),
            child: Container(
                height: 60,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: kblue,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(Constans.padding),
                        topRight: Radius.circular(Constans.padding),
                        bottomLeft: Radius.circular(50),
                        bottomRight: Radius.circular(50))),
                child: Center(
                  child: Text('Select a topic',
                      style: Theme.of(context).textTheme.bodyText1),
                )),
          ),
          Expanded(
            child: GridView.builder(
                padding: const EdgeInsets.all(4),
                itemCount: Fruitdata.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    crossAxisSpacing: 1,
                    mainAxisSpacing: 20),
                itemBuilder: (BuildContext context, int index) {
                  return ChoiceTopic(
                    image: Fruitdata[index].image,
                    title: Fruitdata[index].name,
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => TimerScreans()));
                    },
                    /* onTap: () {
                          switch (index) {
                            case 1:
                              print('object');
                              break;
                            default:
                          }
                          showDialog(
                              context: context,
                              builder: (
                                context,
                              ) =>
                                  DialogShow(
                                      //    pantomimData: Fruitdata[index],
                                      ));
                        },*/
                  );
                }),
          )
        ],
      ),
    );
  }
}
