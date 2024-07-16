import 'package:flutter/material.dart';
import 'package:task/src/core/manager/app_mode/light_theme/light_theme.dart';

/// This is class[AppMode] to toggle between app mode.
///
/// There are tow variables from [ThemeData] type.
///
/// Light & Dark mode variable and we call it in [AppWidget] class.
///

class AppMode {
  static final ThemeData lightTheme = LightTheme.lightTheme;
}
