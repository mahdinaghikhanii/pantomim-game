import 'package:flutter/material.dart';
import 'package:pantomim/model/pantomim_data.dart';
import 'package:pantomim/theme/constant.dart';
import 'package:pantomim/views/widgets/choice_boximage_text_select.dart';
import 'package:pantomim/views/widgets/dialog.dart';

class ChoiceYourTopic extends StatefulWidget {
  const ChoiceYourTopic({Key? key}) : super(key: key);

  @override
  State<ChoiceYourTopic> createState() => _ChoiceYourTopicState();
}

bool viewVisibleButton = false;

class _ChoiceYourTopicState extends State<ChoiceYourTopic> {
  static List imageListTopic = [
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
  static List nameTopic = [
    'Food',
    'Sport',
    'Animal',
    'Movie',
    'Thing',
    'Country',
    'General',
    'Tourism',
    'Book',
    'Job',
    'Music',
    'Tecnology',
  ];
  // ignore: non_constant_identifier_names
  final List<PantomimData> Fruitdata = List.generate(
      imageListTopic.length,
      (index) => PantomimData('${imageListTopic[index]}', '${nameTopic[index]}',
          '${nameTopic[index]}'));

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
        body: SingleChildScrollView(
          child: Column(children: [
            Container(
                color: Colors.transparent,
                width: double.infinity,
                height: size.height * 0.14,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/images/choice.png',
                          width: size.width * 0.20,
                        ),
                        Text('Pls Choice Your Topic',
                            style:
                                Theme.of(context).primaryTextTheme.bodyText1),
                      ],
                    ),
                  ],
                )),
            Container(
              color: Colors.transparent,
              height: size.height * 0.98,
              padding: const EdgeInsets.all(10),
              width: size.width,
              child: GridView.builder(
                  itemCount: Fruitdata.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      crossAxisSpacing: 1,
                      mainAxisSpacing: 5),
                  itemBuilder: (BuildContext context, int index) {
                    return ChoiceTopic(
                      image: Fruitdata[index].image,
                      title: Fruitdata[index].name,
                      onTap: () {
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
                                  pantomimData: Fruitdata[index],
                                ));
                      },
                    );
                  }),
            )
          ]),
        ),
      ),
    );
  }
}
