@JS()
library;

import 'dart:js_interop';

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

@JS()
external void toggleControlsVisibility();

class WebModelEditor {
  void toggleControls() {
    toggleControlsVisibility();
  }
}
