// ignore_for_file: unnecessary_this

import 'package:flutter/material.dart';
import 'package:pantomim/model/pantomim_provider.dart';
import 'package:pantomim/theme/constant.dart';
import 'package:pantomim/views/widgets/choice_boximage_text_select.dart';
import 'package:pantomim/views/widgets/dialog.dart';

import '../../constants.dart';

class ChoiceYourTopic extends StatefulWidget {
  const ChoiceYourTopic({Key? key}) : super(key: key);

  @override
  State<ChoiceYourTopic> createState() => _ChoiceYourTopicState();
}

enum Topic {
  food,
  sport,
  animal,
  movie,
  thing,
  country,
  general,
  tourism,
  book,
  job,
  music,
  tecnology
}
bool viewVisibleButton = false;

class _ChoiceYourTopicState extends State<ChoiceYourTopic> {
  Topic _topic = Topic.food;
  void updateSelectTopic(Topic topicType) {
    setState(() {
      this._topic = topicType;
    });
  }

  void ShowButton() {
    setState(() {
      viewVisibleButton = true;
    });
  }

  void HindButton() {
    setState(() {
      viewVisibleButton = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    PantomimProvider dataPantomim = PantomimProvider();
    return Scaffold(
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(20),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(30),
          child: Visibility(
            maintainSize: true,
            maintainAnimation: true,
            maintainState: true,
            visible: viewVisibleButton,
            child: Container(
                width: 70,
                height: 70,
                color: const Color(0xFFDC9298),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: const Color(0xFFDC9298)),
                  child: const Text('Lets Go'),
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (
                          context,
                        ) =>
                            Dialog(
                                shape: RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.circular(Constants.padding),
                                ),
                                elevation: 0,
                                backgroundColor: Colors.white,
                                child: DialogShow()));
                  },
                )),
          ),
        ),
      ),
      appBar: AppBar(
        backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
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
        child: Column(
          children: [
            const SizedBox(
              height: 30,
            ),
            Center(
                child: Text(
              'Choice Your Topic !',
              style: Theme.of(context).primaryTextTheme.subtitle1,
            )),
            const SizedBox(
              height: 30,
            ),
            Center(
              child: Wrap(
                spacing: 6,
                runSpacing: 10,
                direction: Axis.horizontal,
                children: [
                  ChoiceTopic(
                    image: dataPantomim.imageListTopic[0],
                    onTap: () {
                      ShowButton();
                      updateSelectTopic(Topic.food);
                    },
                    title: dataPantomim.nameTopic[0],
                    isActive: _topic == Topic.food,
                    topic: Topic.food,
                  ),
                  ChoiceTopic(
                    image: dataPantomim.imageListTopic[1],
                    onTap: () {
                      ShowButton();
                      updateSelectTopic(Topic.sport);
                    },
                    title: dataPantomim.nameTopic[1],
                    isActive: _topic == Topic.sport,
                    topic: Topic.sport,
                  ),
                  ChoiceTopic(
                    image: dataPantomim.imageListTopic[2],
                    onTap: () {
                      ShowButton();
                      updateSelectTopic(Topic.animal);
                    },
                    title: dataPantomim.nameTopic[2],
                    isActive: _topic == Topic.animal,
                    topic: Topic.animal,
                  ),
                  ChoiceTopic(
                    image: dataPantomim.imageListTopic[3],
                    onTap: () {
                      ShowButton();
                      updateSelectTopic(Topic.movie);
                    },
                    title: dataPantomim.nameTopic[3],
                    isActive: _topic == Topic.movie,
                    topic: Topic.movie,
                  ),
                  ChoiceTopic(
                    image: dataPantomim.imageListTopic[4],
                    onTap: () {
                      ShowButton();
                      updateSelectTopic(Topic.thing);
                    },
                    title: dataPantomim.nameTopic[4],
                    isActive: _topic == Topic.thing,
                    topic: Topic.thing,
                  ),
                  ChoiceTopic(
                    image: dataPantomim.imageListTopic[5],
                    onTap: () {
                      ShowButton();
                      updateSelectTopic(Topic.country);
                    },
                    title: dataPantomim.nameTopic[5],
                    isActive: _topic == Topic.country,
                    topic: Topic.country,
                  ),
                  ChoiceTopic(
                    image: dataPantomim.imageListTopic[6],
                    onTap: () {
                      ShowButton();
                      updateSelectTopic(Topic.general);
                    },
                    title: dataPantomim.nameTopic[6],
                    isActive: _topic == Topic.general,
                    topic: Topic.general,
                  ),
                  ChoiceTopic(
                    image: dataPantomim.imageListTopic[7],
                    onTap: () {
                      ShowButton();
                      updateSelectTopic(Topic.tourism);
                    },
                    title: dataPantomim.nameTopic[7],
                    isActive: _topic == Topic.tourism,
                    topic: Topic.tourism,
                  ),
                  ChoiceTopic(
                    image: dataPantomim.imageListTopic[8],
                    onTap: () {
                      ShowButton();
                      updateSelectTopic(Topic.book);
                    },
                    title: dataPantomim.nameTopic[8],
                    isActive: _topic == Topic.book,
                    topic: Topic.book,
                  ),
                  ChoiceTopic(
                    image: dataPantomim.imageListTopic[9],
                    onTap: () {
                      updateSelectTopic(Topic.job);
                      ShowButton();
                    },
                    title: dataPantomim.nameTopic[9],
                    isActive: _topic == Topic.job,
                    topic: Topic.job,
                  ),
                  ChoiceTopic(
                    image: dataPantomim.imageListTopic[10],
                    onTap: () {
                      ShowButton();
                      updateSelectTopic(Topic.music);
                    },
                    title: dataPantomim.nameTopic[10],
                    isActive: _topic == Topic.music,
                    topic: Topic.music,
                  ),
                  ChoiceTopic(
                      image: dataPantomim.imageListTopic[11],
                      onTap: () {
                        ShowButton();
                        updateSelectTopic(Topic.tecnology);
                      },
                      title: dataPantomim.nameTopic[11],
                      isActive: _topic == Topic.tecnology,
                      topic: Topic.tecnology),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
