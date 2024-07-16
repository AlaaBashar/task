import '../../../../src.export.dart';

abstract class LightTheme {
  static final ThemeData lightTheme = ThemeData(
    primaryColor: ColorHelper.kPrimaryColor,
    fontFamily: FontHelper.cairo,
    scaffoldBackgroundColor: Colors.white,
    textTheme: const TextTheme(
      headlineLarge: LightTextStyle.headLineLarge,
      titleMedium: LightTextStyle.titleMedium,
      bodyMedium: LightTextStyle.bodyMedium,
      labelSmall: LightTextStyle.labelSmall,
    ),
  );
}
