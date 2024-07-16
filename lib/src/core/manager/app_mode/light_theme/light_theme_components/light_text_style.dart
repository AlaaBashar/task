import 'package:flutter/material.dart';
import 'package:task/src/core/manager/assets_manager/font_helper.dart';

abstract class LightTextStyle {
  static const TextStyle headLineLarge = TextStyle(
    fontFamily: FontHelper.cairo,
    fontSize: FontHelper.s24,
    letterSpacing: FontHelper.letterSpacing,
    fontWeight: FontWeight.bold,
    color: Colors.black,
  );

  static const TextStyle titleMedium = TextStyle(
    fontFamily: FontHelper.cairo,
    fontSize: FontHelper.s17,
    color: Colors.black,
    fontWeight: FontHelper.bold,
    letterSpacing: FontHelper.letterSpacing,
  );

  static const TextStyle bodyMedium = TextStyle(
    fontFamily: FontHelper.cairo,
    fontSize: FontHelper.s14,
    color: Colors.black,
    fontWeight: FontHelper.bold,
  );

  static const TextStyle labelSmall = TextStyle(
    fontFamily: FontHelper.cairo,
    fontSize: FontHelper.s19,
    color: Colors.black,
    fontWeight: FontHelper.bold,
    letterSpacing: FontHelper.letterSpacing,
  );
}
