import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:his_words/common/styles/app_bar_themes.dart';
import 'package:his_words/common/styles/app_colors.dart';
import 'package:his_words/common/styles/color_schemes.dart';
import 'package:his_words/common/styles/elevated_button_themes.dart';
import 'package:his_words/common/styles/icon_themes.dart';
import 'package:his_words/common/styles/text_themes.dart';

class AppThemes {
  const AppThemes._();

  static final defaultStyle = ThemeData(
    brightness: Brightness.light,
    splashColor: HisWordsColors.primary.withAlpha(50),
    highlightColor: HisWordsColors.primary.withAlpha(20),
    scaffoldBackgroundColor: ColorSchemes.defaultStyle.onSurfaceVariant,
    cupertinoOverrideTheme: const CupertinoThemeData(
      brightness: Brightness.dark,
    ),
    fontFamily: 'AdelleSans',
    visualDensity: VisualDensity.standard,
    bannerTheme: const MaterialBannerThemeData(),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(),
    dialogTheme: const DialogTheme(),
    elevatedButtonTheme: ElevatedButtonThemes.defaultStyle,
    textTheme: TextThemes.defaultStyle,
    iconTheme: IconThemes.defaultStyle,
    appBarTheme: AppBarThemes.defaultStyle,

    // TODO(jesther) Change when ready
    // dividerTheme: DividerThemes.defaultStyle,
    // sliderTheme: SliderThemes.defaultStyle,
    // textButtonTheme: TextButtonThemes.defaultStyle,
    // outlinedButtonTheme: OutlinedButtonThemes.defaultStyle,
    // buttonTheme: ButtonThemes.defaultStyle,
    // inputDecorationTheme: InputDecorationThemes.defaultStyle,
    // cardTheme: CardThemes.defaultStyle,
    // chipTheme: ChipThemes.defaultStyle,
    extensions: [
      AppColors.defaultStyle(),
    ],
    bottomAppBarTheme: const BottomAppBarTheme(color: HisWordsColors.white),
  );

  static final darkTheme = ThemeData(
    brightness: Brightness.light,
    splashColor: HisWordsColors.white.withAlpha(50),
    primaryColor: HisWordsColors.darkPrimary,
    highlightColor: HisWordsColors.white.withAlpha(50),
    scaffoldBackgroundColor: HisWordsColors.darkScaffold,
    cardColor: HisWordsColors.darkCards,
    cupertinoOverrideTheme: const CupertinoThemeData(
      brightness: Brightness.dark,
    ),
    fontFamily: 'AdelleSans',
    visualDensity: VisualDensity.standard,
    bannerTheme: const MaterialBannerThemeData(),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      backgroundColor: HisWordsColors.darkCardGradient1,
      selectedIconTheme: IconThemeData(color: HisWordsColors.white),
      unselectedIconTheme: IconThemeData(color: HisWordsColors.gray2),
    ),
    dialogTheme: DialogTheme(
      backgroundColor: HisWordsColors.darkScaffold,
      titleTextStyle: TextThemes.darkStyle.headlineSmall,
      contentTextStyle: TextThemes.darkStyle.bodyMedium,
    ),
    elevatedButtonTheme: ElevatedButtonThemes.darkStyle,
    textTheme: TextThemes.darkStyle,
    iconTheme: IconThemes.darkStyle,
    appBarTheme: AppBarThemes.darkStyle,
    extensions: [
      AppColors.dark(),
    ],
    colorScheme: ColorSchemes.darkStyle.copyWith(
      brightness: Brightness.light,
    ),
  );
}
