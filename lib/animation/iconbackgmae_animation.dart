import 'package:flutter/animation.dart';

class BackGameIconAnimation {
  AnimationController animationController;
  Animation<double> backnext;
  Animation color;
  Animation size;

  BackGameIconAnimation(
      this.animationController, this.backnext, this.color, this.size);
}
