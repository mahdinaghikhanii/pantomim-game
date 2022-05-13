import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';

import '../../../generated/l10n.dart';

extension ExtensionContext on BuildContext {
  double get width => MediaQuery.of(this).size.width;
  double get height => MediaQuery.of(this).size.height;
  S get localApp => S.of(this);

  void nextScreans(Widget child) async {
    await Navigator.push(this, MaterialPageRoute(builder: (context) => child));
  }

  void showDialogs(Widget child, bool barrierDismissible) async {
    await showDialog(
        context: this,
        barrierDismissible: barrierDismissible,
        builder: (context) => child);
  }
}

extension Audio on BuildContext {
  void playAudio(String path) async {
    final player = AudioPlayer();
    await player.setAsset(path);
    await player.play();
  }
}
