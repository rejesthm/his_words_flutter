import 'package:flutter/material.dart';
import 'package:his_words/common/styles/app_colors.dart';
import 'package:his_words/common/styles/icon_themes.dart';

class AppBarThemes {
  const AppBarThemes._();

  static const defaultStyle = AppBarTheme(
    color: HisWordsColors.white,
    elevation: 0,
    iconTheme: IconThemes.defaultStyle,
  );

  static const darkStyle = AppBarTheme(
    color: HisWordsColors.darkScaffold,
    elevation: 0,
    iconTheme: IconThemes.darkStyle,
  );
}
