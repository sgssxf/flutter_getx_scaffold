import 'package:flutter/material.dart';

// Color Extensions
extension ExColor on Color {
  /// return hex String
  String toHex({bool leadingHashSign = true, bool includeAlpha = false}) {
    // 将浮点颜色分量转换为 0-255 的整数
    int alphaValue = (a * 255).round().clamp(0, 255);
    int redValue = (r * 255).round().clamp(0, 255);
    int greenValue = (g * 255).round().clamp(0, 255);
    int blueValue = (b * 255).round().clamp(0, 255);
    return '${leadingHashSign ? '#' : ''}'
        '${includeAlpha ? alphaValue.toRadixString(16).padLeft(2, '0') : ''}'
        '${redValue.toRadixString(16).padLeft(2, '0')}'
        '${greenValue.toRadixString(16).padLeft(2, '0')}'
        '${blueValue.toRadixString(16).padLeft(2, '0')}';
  }

  /// Return true if given Color is dark
  bool isDark() => getBrightness() < 128.0;

  /// Return true if given Color is light
  bool isLight() => !isDark();

  /// Returns Brightness of give Color
  double getBrightness() => (r * 299 + g * 587 + b * 114) / 1000;

  /// Returns Luminance of give Color
  double getLuminance() => computeLuminance();
}
