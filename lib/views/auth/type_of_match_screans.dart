import 'package:flutter/material.dart';
import 'package:pantomim/generated/l10n.dart';
import 'package:pantomim/module/pantomim_data.dart';
import 'package:pantomim/views/widgets/choice_boximage_text_select.dart';
import 'package:pantomim/views/dialog_screns/dialog_choice_your_topic.dart';

class ChoiceYourTopic extends StatefulWidget {
  const ChoiceYourTopic({Key? key}) : super(key: key);

  @override
  State<ChoiceYourTopic> createState() => _ChoiceYourTopicState();
}

bool viewVisibleButton = false;

class _ChoiceYourTopicState extends State<ChoiceYourTopic> {
  // ignore: non_constant_identifier_names

  @override
  Widget build(BuildContext context) {
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
    final size = MediaQuery.of(context).size;
    return Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: [Colors.white38, Colors.blue])),
      child: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            elevation: 0,
            backgroundColor: Colors.transparent,
            // ignore: prefer_const_literals_to_create_immutables
            actions: [
              // ignore: prefer_const_constructors
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: const Text(
                  'Pantomim :)',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ),
            ],
          ),
          body: Container()),
    );
  }
}
