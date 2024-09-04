import 'package:webview_flutter/webview_flutter.dart';

class MobileModelEditor {
  MobileModelEditor(this._controller);

  final WebViewController _controller;

  void toggleControlls() {
    _controller.runJavaScript('toggleControlsVisibility()');
  }
}
