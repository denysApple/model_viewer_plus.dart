@JS()
library;

import 'dart:js_interop';

import '../../model_viewer_plus.dart';
import '../util/hex_color.dart';

@JS()
external void updateCanvasTexture1(
  String? customText,
  String? color,
  String? backgroundColor,
  int? fontSize,
  int? textX,
  int? textY,
  String? texture,
  int? rotation,
  String? imageSrc,
);

@JS()
external void toggleControlsVisibility();

class WebModelEditor {
  void updateState(ModelState state) {
    updateCanvasTexture1(
      state.customText,
      state.color?.toHex(),
      state.backgroundColor?.toHex(),
      state.fontSize?.round(),
      state.textX,
      state.textY,
      switch (state.textureType) {
        TextureType.text => "text",
        _ => "none",
      },
      state.rotation,
      state.imageSrc,
    );
  }
}
