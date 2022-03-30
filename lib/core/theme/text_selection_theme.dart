import 'package:flutter/material.dart';
import 'package:wikimsglow/core/theme/color_themes.dart';

TextSelectionThemeData textSelectionThemeData() {
  return TextSelectionThemeData(
    cursorColor: ColorTheme.primary,
    selectionColor: ColorTheme.primaryLight,
    selectionHandleColor: ColorTheme.primary,
  );
}
