import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';

const List<String> displayLabels = ['person', 'cat', 'out of path', 'on path'];
FlutterTts flutterTts = FlutterTts();

class Recognition {
  Recognition(this._id, this._labelId, this._score, this._location);
  final int _id;
  int get id => _id;
  final int _labelId;
  int get label => _labelId;
  String get displayLabel => displayLabels[_labelId];
  final double _score;
  double get score => _score;
  final Rect _location;
  Rect get location => _location;

  Rect getRenderLocation(Size actualPreviewSize, double pixelRatio) {
    final ratioX = pixelRatio;
    final ratioY = ratioX;

    final transLeft = max(0.1, location.left * ratioX);
    final transTop = max(0.1, location.top * ratioY);
    final transWidth = min(
      location.width * ratioX,
      actualPreviewSize.width,
    );
    final transHeight = min(
      location.height * ratioY,
      actualPreviewSize.height,
    );
    final transformedRect =
        Rect.fromLTWH(transLeft, transTop, transWidth, transHeight);
    return transformedRect;
  }
}
