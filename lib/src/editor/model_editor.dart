@JS()
library;

import 'dart:js_interop';

import 'package:flutter/material.dart';

@JS()
external void updateCanvasTexture1(
  int width,
  int height,
  String customText,
  String color,
  String backgroundColor,
  int fontSize,
  int textX,
  int textY,
);

class ModelEditor {
  void test() {
    Color color = Colors.pink;
    updateCanvasTexture1(
      300,
      150,
      'Hello, World!',
      '#FFFFFF',
      '#000000',
      24,
      50,
      75,
    );
  }
}
