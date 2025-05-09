import 'package:flutter/material.dart';
import 'package:getx_scaffold/getx_scaffold.dart';

/**
 * @author: Kxmrg
 * @github: https://github.com/Kxmrg
 * @version: 1.0.0
 * @copyright: Copyright © 2023-2024 Kxmrg
 * @license: MIT License
 * @date: 2024-07-04
 * @description: 
 */

/// 文本标签
class TextTag extends StatelessWidget {
  final String text;
  final Color? color;
  final bool outline;
  final FontWeight? weight;

  const TextTag(
    this.text, {
    super.key,
    this.color,
    this.outline = false,
    this.weight = FontWeight.normal,
  });

  @override
  Widget build(BuildContext context) {
    if (outline) {
      return TextX.labelSmall(
        text,
        color: color ?? ThemeColor.primary,
        weight: weight,
      )
          .padding(
            horizontal: 6.w,
            vertical: 2.h,
          )
          .border(
            radius: 8.r,
            color: color ?? ThemeColor.primary,
            all: 1.4,
          );
    } else {
      return TextX.labelSmall(
        text,
        color: Colors.white,
        weight: weight,
      )
          .padding(
            horizontal: 6.w,
            vertical: 2.h,
          )
          .border(
            radius: 8.r,
            backgroundColor: color ?? ThemeColor.primary,
          );
    }
  }
}
