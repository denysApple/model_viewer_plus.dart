import '../util/hex_color.dart';
import 'model_state.dart';
import 'package:webview_flutter/webview_flutter.dart';

class MobileModelEditor {
  MobileModelEditor(this._controller);

  final WebViewController _controller;

  void updateState(ModelState state) {
    final customText = state.customText;
    final color = state.color != null ? '"${state.color?.toHex()}"' : null;
    final backgroundColor = state.backgroundColor != null
        ? '"${state.backgroundColor?.toHex()}"'
        : null;
    final fontSize = state.fontSize;
    final textX = state.textX;
    final textY = state.textY;
    final texture = switch (state.textureType) {
      TextureType.text => '\"text\"',
      _ => '"none"',
    };
    final rotation = state.rotation;
    final imageSrc = state.imageSrc != null ? '"${state.imageSrc}"' : null;
    final imageRotation = state.imageRotation;
    final imageX = state.imageX;
    final imageY = state.imageY;
    final imageWidth = state.imageWidth;
    final imageHeight = state.imageHeight;
    final imageScale = state.imageScale;

    final jsMethod = """
    updateCanvasTexture1(
    "${customText ?? ''}",
    $color,
    $backgroundColor,
    $fontSize,
    $textX,
    $textY,
    $texture,
    $rotation, 
    $imageSrc,
    $imageRotation,
    $imageX,
    $imageY,
    $imageWidth,
    $imageHeight,
    $imageScale
    )
    """;
    print("js: $jsMethod");
    _controller.runJavaScript(jsMethod);
  }

  void export() {
    _controller.runJavaScript("exportGLB()");
  }

  void save() {
    print('save button in mobile_model_editor');
    _controller.runJavaScript("saveGLB()");
  }
}
