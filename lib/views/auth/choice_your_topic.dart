import 'package:flutter/material.dart';
import 'package:pantomim/views/widgets/choice_boximage_text_select.dart';

class ChoiceYourTopic extends StatelessWidget {
  const ChoiceYourTopic({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
            SizedBox(
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
                    onTap: () {},
                    title: 'Food',
                  ),
                  ChoiceTopic(
                    image: 'assets/images/topic/fotbal.png',
                    onTap: () {},
                    title: 'Sport',
                  ),
                  ChoiceTopic(
                    image: 'assets/images/topic/animal.png',
                    onTap: () {},
                    title: 'animal',
                  ),
                  ChoiceTopic(
                    image: 'assets/images/topic/movie.png',
                    onTap: () {},
                    title: 'Movie-seris',
                  ),
                  ChoiceTopic(
                    image: 'assets/images/topic/thing.png',
                    onTap: () {},
                    title: 'Thing ',
                  ),
                  ChoiceTopic(
                    image: 'assets/images/topic/country.png',
                    onTap: () {},
                    title: 'Country',
                  ),
                  ChoiceTopic(
                    image: 'assets/images/topic/general.png',
                    onTap: () {},
                    title: 'general',
                  ),
                  ChoiceTopic(
                    image: 'assets/images/topic/tourism.png',
                    onTap: () {},
                    title: 'Tourism',
                  ),
                  ChoiceTopic(
                    image: 'assets/images/topic/book.png',
                    onTap: () {},
                    title: 'Book',
                  ),
                  ChoiceTopic(
                    image: 'assets/images/topic/job.png',
                    onTap: () {},
                    title: 'Job',
                  ),
                  ChoiceTopic(
                    image: 'assets/images/topic/music.png',
                    onTap: () {},
                    title: 'Music',
                  ),
                  ChoiceTopic(
                    image: 'assets/images/topic/tecnology.png',
                    onTap: () {},
                    title: 'Tecnology',
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
