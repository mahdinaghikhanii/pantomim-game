// ignore_for_file: unnecessary_this

import 'package:flutter/material.dart';
import 'package:pantomim/theme/constant.dart';
import 'package:pantomim/views/widgets/choice_boximage_text_select.dart';

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

class _ChoiceYourTopicState extends State<ChoiceYourTopic> {
  Topic _topic = Topic.food;
  void updateSelectTopic(Topic topicType) {
    setState(() {
      this._topic = topicType;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(20),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Container(
            height: 70,
            width: double.infinity,
            color: kpink,
            child: Center(
              child: Text(
                'Lets Go !',
                style: Theme.of(context).primaryTextTheme.bodyText1,
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ),
      ),
      appBar: AppBar(
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
              height: 20,
            ),
            Center(
                child: Text(
              'Choice Your Topic !',
              style: Theme.of(context).primaryTextTheme.subtitle1,
            )),
            const SizedBox(
              height: 20,
            ),
            Center(
              child: Wrap(
                spacing: 6,
                runSpacing: 10,
                direction: Axis.horizontal,
                children: [
                  ChoiceTopic(
                    image: 'assets/images/topic/food.png',
                    onTap: () {
                      updateSelectTopic(Topic.food);
                    },
                    title: 'Food',
                    isActive: _topic == Topic.food,
                    topic: Topic.food,
                  ),
                  ChoiceTopic(
                    image: 'assets/images/topic/fotbal.png',
                    onTap: () {
                      updateSelectTopic(Topic.sport);
                    },
                    title: 'Sport',
                    isActive: _topic == Topic.sport,
                    topic: Topic.sport,
                  ),
                  ChoiceTopic(
                    image: 'assets/images/topic/animal.png',
                    onTap: () {
                      updateSelectTopic(Topic.animal);
                    },
                    title: 'animal',
                    isActive: _topic == Topic.animal,
                    topic: Topic.animal,
                  ),
                  ChoiceTopic(
                    image: 'assets/images/topic/movie.png',
                    onTap: () {
                      updateSelectTopic(Topic.movie);
                    },
                    title: 'Movie-seris',
                    isActive: _topic == Topic.movie,
                    topic: Topic.movie,
                  ),
                  ChoiceTopic(
                    image: 'assets/images/topic/thing.png',
                    onTap: () {
                      updateSelectTopic(Topic.thing);
                    },
                    title: 'Thing ',
                    isActive: _topic == Topic.thing,
                    topic: Topic.thing,
                  ),
                  ChoiceTopic(
                    image: 'assets/images/topic/country.png',
                    onTap: () {
                      updateSelectTopic(Topic.country);
                    },
                    title: 'Country',
                    isActive: _topic == Topic.country,
                    topic: Topic.country,
                  ),
                  ChoiceTopic(
                    image: 'assets/images/topic/general.png',
                    onTap: () {
                      updateSelectTopic(Topic.general);
                    },
                    title: 'general',
                    isActive: _topic == Topic.general,
                    topic: Topic.general,
                  ),
                  ChoiceTopic(
                    image: 'assets/images/topic/tourism.png',
                    onTap: () {
                      updateSelectTopic(Topic.tourism);
                    },
                    title: 'Tourism',
                    isActive: _topic == Topic.tourism,
                    topic: Topic.tourism,
                  ),
                  ChoiceTopic(
                    image: 'assets/images/topic/book.png',
                    onTap: () {
                      updateSelectTopic(Topic.book);
                    },
                    title: 'Book',
                    isActive: _topic == Topic.book,
                    topic: Topic.book,
                  ),
                  ChoiceTopic(
                    image: 'assets/images/topic/job.png',
                    onTap: () {
                      updateSelectTopic(Topic.job);
                    },
                    title: 'Job',
                    isActive: _topic == Topic.job,
                    topic: Topic.job,
                  ),
                  ChoiceTopic(
                    image: 'assets/images/topic/music.png',
                    onTap: () {
                      updateSelectTopic(Topic.music);
                    },
                    title: 'Music',
                    isActive: _topic == Topic.music,
                    topic: Topic.music,
                  ),
                  ChoiceTopic(
                      image: 'assets/images/topic/tecnology.png',
                      onTap: () {
                        updateSelectTopic(Topic.tecnology);
                      },
                      title: 'Tecnology',
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
