// //   const width = parseInt(document.getElementById("canvasWidth").value);
//   const height = parseInt(document.getElementById("canvasHeight").value);
//   const customText = document.getElementById("customText").value;
//   const color = document.getElementById("colorPicker").value;
//   const backgroundColor = document.getElementById(
//     "backgroundColorPicker",
//   ).value;
//   const fontSize = parseInt(document.getElementById("fontSize").value);
//   const textX = parseInt(document.getElementById("textX").value);
//   const textY = parseInt(document.getElementById("textY").value);

import 'package:flutter/material.dart';

class ModelState {
  ModelState({
    this.width,
    this.height,
    this.customText,
    this.color,
    this.backgroundColor,
    this.fontSize,
    this.textOffset,
  });

  final int? width;
  final int? height;
  final String? customText;
  final Color? color;
  final Color? backgroundColor;
  final double? fontSize;
  final Offset? textOffset;
}
