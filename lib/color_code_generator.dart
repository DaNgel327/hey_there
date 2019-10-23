import 'dart:math';
import 'package:flutter/material.dart';

class ColorGenerator {
  static Color getRandomColor() =>
      Color((Random().nextDouble() * 0xFFFFFF).toInt() << 0).withOpacity(1.0);
}
