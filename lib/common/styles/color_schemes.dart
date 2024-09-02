import 'package:flutter/material.dart';
import 'package:his_words/common/styles/app_colors.dart';

class ColorSchemes {
  const ColorSchemes._();

  static ColorScheme defaultStyle = ColorScheme.fromSwatch().copyWith(
    primary: HisWordsColors.primary,
    secondary: HisWordsColors.secondary,
    tertiary: const Color(0xFF386A20),
    error: HisWordsColors.error,
    onPrimary: HisWordsColors.white,
    onSecondary: HisWordsColors.white,
    onTertiary: HisWordsColors.white,
    onError: HisWordsColors.white,
    onSurfaceVariant: const Color(0xFF49454F),
    primaryContainer: const Color(0xFFEADDFF),
    secondaryContainer: const Color(0xFFE8DEF8),
    tertiaryContainer: const Color(0xFFB7F397),
    errorContainer: const Color(0xFFFFDAD4),
    surface: HisWordsColors.white,
    outline: HisWordsColors.secondary,
    onPrimaryContainer: const Color(0xFF21005D),
    onSecondaryContainer: const Color(0xFF1E192B),
    onTertiaryContainer: const Color(0xFF042100),
    onErrorContainer: const Color(0xFF410001),
    onSurface: const Color(0xFF1C1B1F),
  );

  static ColorScheme darkStyle = ColorScheme.fromSwatch().copyWith(
    primary: const Color(0xFF00ADEF),
    secondary: const Color(0xFFC4C4C4),
    tertiary: const Color(0xFF386A20),
    error: const Color(0xFFFF4C4C),
    onPrimary: Colors.white,
    onSecondary: const Color(0xFF262626),
    onTertiary: Colors.white,
    onError: Colors.white,
    onSurfaceVariant: Colors.white,
    primaryContainer: const Color(0xFF005687),
    secondaryContainer: const Color(0xFF999999),
    tertiaryContainer: const Color(0xFF2C5515),
    errorContainer: const Color(0xFF992222),
    surface: const Color(0xFF1C1C1C),
    outline: const Color(0xFF999999),
    onPrimaryContainer: Colors.white,
    onSecondaryContainer: const Color(0xFF262626),
    onTertiaryContainer: Colors.white,
    onErrorContainer: Colors.white,
    onSurface: Colors.white,
  );
}
