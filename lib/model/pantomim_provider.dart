import 'package:flutter/material.dart';
import 'package:pantomim/model/pantomim_data.dart';

class PantomimProvider extends ChangeNotifier {
  List<String> imageListTopic = [
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

  List<String> nameTopic = [
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
}
