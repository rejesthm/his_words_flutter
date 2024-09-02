import 'package:flutter/material.dart';
import 'package:his_words/common/styles/app_colors.dart';
import 'package:his_words/common/styles/text_themes.dart';

class ButtonStyles {
  const ButtonStyles._();

  static ButtonStyle defaultStyle = ButtonStyle(
    padding: WidgetStateProperty.resolveWith<EdgeInsets>(
      (states) {
        return const EdgeInsets.symmetric(horizontal: 27, vertical: 14);
      },
    ),
    textStyle: WidgetStateProperty.all(
      TextThemes.defaultStyle.labelLarge,
    ),
    foregroundColor: WidgetStateProperty.resolveWith<Color>(
      (states) {
        return HisWordsColors.white;
      },
    ),
    minimumSize: WidgetStateProperty.all(const Size(96, 0)),
    backgroundColor: WidgetStateProperty.resolveWith<Color>(
      (states) {
        if (states.contains(WidgetState.disabled)) {
          return AppColors.defaultStyle().disabled!;
        }
        return AppColors.defaultStyle().tappable!;
      },
    ),
    overlayColor: WidgetStateProperty.resolveWith<Color>(
      (states) {
        return HisWordsColors.black;
      },
    ),
    shape: WidgetStateProperty.resolveWith<OutlinedBorder>((states) {
      return RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      );
    }),
    elevation: WidgetStateProperty.resolveWith<double>(
      (states) {
        if (states.contains(WidgetState.pressed)) {
          return 7;
        }
        return 0;
      },
    ),
  );

  static ButtonStyle white = defaultStyle.copyWith(
    foregroundColor: WidgetStateProperty.resolveWith<Color>(
      (states) {
        return AppColors.defaultStyle().text!;
      },
    ),
    backgroundColor: WidgetStateProperty.resolveWith<Color>(
      (states) {
        if (states.contains(WidgetState.disabled)) {
          return HisWordsColors.gray4;
        }
        return HisWordsColors.white;
      },
    ),
    overlayColor: WidgetStateProperty.resolveWith<Color>(
      (states) {
        return HisWordsColors.primary.withAlpha(50);
      },
    ),
  );

  static ButtonStyle whiteBordered = white.copyWith(
    shape: WidgetStateProperty.resolveWith<OutlinedBorder>(
      (states) {
        if (states.contains(WidgetState.pressed)) {
          return RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          );
        }

        return RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
          side: const BorderSide(
            color: HisWordsColors.gray2,
            width: 0.91,
          ),
        );
      },
    ),
  );

  static ButtonStyle transparentWhiteBordered = ButtonStyle(
    foregroundColor: WidgetStateProperty.all<Color>(Colors.white),
    backgroundColor: WidgetStateProperty.all<Color>(Colors.transparent),
    overlayColor: WidgetStateProperty.resolveWith<Color>(
      (states) {
        return HisWordsColors.primary.withAlpha(50);
      },
    ),
    shape: WidgetStateProperty.resolveWith<OutlinedBorder>(
      (states) {
        return RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
          side: const BorderSide(
            color: HisWordsColors.white,
            width: 1,
          ),
        );
      },
    ),
  );
}
