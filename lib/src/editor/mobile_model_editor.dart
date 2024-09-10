import '../util/hex_color.dart';
import 'model_state.dart';
import 'package:webview_flutter/webview_flutter.dart';

class MobileModelEditor {
  MobileModelEditor(this._controller);

  final WebViewController _controller;

  void toggleControlls() {
    _controller.runJavaScript('toggleControlsVisibility()');
  }

  void updateState(ModelState state) {
    print("updating state");
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
    final jsMethod = """
    updateCanvasTexture1(
    "${customText ?? ''}",
    $color,
    $backgroundColor,
    $fontSize,
    $textX,
    $textY,
    $texture
    )
    """;
    print("js: $jsMethod");
    _controller.runJavaScript(jsMethod);
  }
}
