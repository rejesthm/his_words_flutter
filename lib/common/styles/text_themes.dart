import 'package:flutter/material.dart';
import 'package:his_words/common/styles/app_colors.dart';

class TextThemes {
  const TextThemes._();

  static const fontFamily = 'AdelleSans';

  static TextTheme defaultStyle = const TextTheme(
    // headline1
    displayLarge: TextStyle(
      fontFamily: fontFamily,
      fontWeight: FontWeight.w900,
      fontSize: 57,
      letterSpacing: -0.25,
      color: HisWordsColors.black,
    ),
    // headline2
    displayMedium: TextStyle(
      fontFamily: fontFamily,
      fontWeight: FontWeight.w700,
      fontSize: 34,
      letterSpacing: .5,
      color: HisWordsColors.black,
    ),
    // headline3
    displaySmall: TextStyle(
      fontFamily: fontFamily,
      fontWeight: FontWeight.w700,
      fontSize: 28,
      letterSpacing: .5,
      color: HisWordsColors.black,
    ),
    // headline4
    headlineMedium: TextStyle(
      fontFamily: fontFamily,
      fontWeight: FontWeight.w700,
      fontSize: 24,
      letterSpacing: 0.5,
      color: HisWordsColors.black,
    ),
    // headline5
    headlineSmall: TextStyle(
      fontFamily: fontFamily,
      fontWeight: FontWeight.w700,
      fontSize: 20,
      letterSpacing: 0.25,
      color: HisWordsColors.black,
    ),
    // headline6
    titleLarge: TextStyle(
      fontFamily: fontFamily,
      fontWeight: FontWeight.w600,
      fontSize: 18,
      letterSpacing: 0.25,
      color: HisWordsColors.black,
    ),
    // bodyText1
    bodyLarge: TextStyle(
      fontFamily: fontFamily,
      fontWeight: FontWeight.w400,
      fontSize: 16,
      letterSpacing: 0.5,
      color: HisWordsColors.black,
    ),
    // bodyText2
    bodyMedium: TextStyle(
      fontFamily: fontFamily,
      fontWeight: FontWeight.w400,
      fontSize: 14,
      letterSpacing: 0.25,
      color: HisWordsColors.black,
    ),
    labelLarge: TextStyle(
      fontFamily: fontFamily,
      fontWeight: FontWeight.w600,
      fontSize: 16,
      letterSpacing: .25,
      color: HisWordsColors.black,
    ),
    labelMedium: TextStyle(
      fontFamily: fontFamily,
      fontWeight: FontWeight.w500,
      fontSize: 14,
      letterSpacing: .25,
      color: HisWordsColors.black,
    ),
    labelSmall: TextStyle(
      fontFamily: fontFamily,
      fontWeight: FontWeight.w400,
      fontSize: 12,
      letterSpacing: .25,
      color: HisWordsColors.black,
    ),
  );

  static TextTheme darkStyle = TextTheme(
    // headline1
    displayLarge:
        defaultStyle.displayLarge!.copyWith(color: HisWordsColors.white),
    // headline2
    displayMedium:
        defaultStyle.displayMedium!.copyWith(color: HisWordsColors.white),
    // headline3
    displaySmall:
        defaultStyle.displaySmall!.copyWith(color: HisWordsColors.white),
    // headline4
    headlineMedium:
        defaultStyle.headlineMedium!.copyWith(color: HisWordsColors.white),
    // headline5
    headlineSmall:
        defaultStyle.headlineSmall!.copyWith(color: HisWordsColors.white),
    // headline6
    titleLarge: defaultStyle.titleLarge!.copyWith(color: HisWordsColors.white),
    // bodyText1
    bodyLarge: defaultStyle.bodyLarge!.copyWith(color: HisWordsColors.white),
    // bodyText2
    bodyMedium: defaultStyle.bodyMedium!.copyWith(color: HisWordsColors.white),
    labelLarge: defaultStyle.labelLarge!.copyWith(color: HisWordsColors.white),
    labelMedium:
        defaultStyle.labelMedium!.copyWith(color: HisWordsColors.white),
    labelSmall: defaultStyle.labelSmall!.copyWith(color: HisWordsColors.white),
  );
}
