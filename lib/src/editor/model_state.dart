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

enum TextureType {
  none,
  text,
  ;
}

class ModelState {
  ModelState({
    this.width,
    this.height,
    this.customText,
    this.color,
    this.backgroundColor,
    this.fontSize,
    this.textX,
    this.textY,
    this.textureType,
  });

  final int? width;
  final int? height;
  final String? customText;
  final Color? color;
  final Color? backgroundColor;
  final int? fontSize;
  final int? textX;
  final int? textY;
  final TextureType? textureType;

  ModelState copyWith({
    int? width,
    int? height,
    String? customText,
    Color? color,
    Color? backgroundColor,
    int? fontSize,
    TextureType? textureType,
    int? textX,
    int? textY,
  }) =>
      ModelState(
        width: width ?? this.width,
        height: height ?? this.height,
        customText: customText ?? this.customText,
        color: color ?? this.color,
        backgroundColor: backgroundColor ?? this.backgroundColor,
        fontSize: fontSize ?? this.fontSize,
        textureType: textureType ?? this.textureType,
        textX: textX ?? this.textX,
        textY: textY ?? this.textY,
      );
}
