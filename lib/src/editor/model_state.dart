import 'package:flutter/material.dart';

enum TextureType {
  none,
  text,
  ;
}

class ModelState {
  ModelState({
    this.customText,
    this.color,
    this.backgroundColor,
    this.fontSize,
    this.textX,
    this.textY,
    this.textureType,
    this.rotation,
    this.imageSrc,
    this.imageRotation,
    this.imageX,
    this.imageY,
  });

  final String? customText;
  final Color? color;
  final Color? backgroundColor;
  final int? fontSize;
  final int? textX;
  final int? textY;
  final TextureType? textureType;
  final int? rotation;
  final String? imageSrc;
  final int? imageRotation;
  final int? imageX;
  final int? imageY;

  ModelState copyWith({
    String? customText,
    Color? color,
    Color? backgroundColor,
    int? fontSize,
    TextureType? textureType,
    int? textX,
    int? textY,
    int? rotation,
    String? imageSrc,
    int? imageRotation,
    int? imageX,
    int? imageY,
  }) =>
      ModelState(
        customText: customText ?? this.customText,
        color: color ?? this.color,
        backgroundColor: backgroundColor ?? this.backgroundColor,
        fontSize: fontSize ?? this.fontSize,
        textureType: textureType ?? this.textureType,
        textX: textX ?? this.textX,
        textY: textY ?? this.textY,
        rotation: rotation ?? this.rotation,
        imageSrc: imageSrc ?? this.imageSrc,
        imageRotation: imageRotation ?? this.imageRotation,
        imageX: imageX ?? this.imageX,
        imageY: imageY ?? this.imageY,
      );
}
