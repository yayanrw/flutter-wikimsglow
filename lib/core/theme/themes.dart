import 'package:flutter/material.dart';
import 'package:wikimsglow/core/config/apps_config.dart';
import 'package:wikimsglow/core/theme/appbar_theme.dart';
import 'package:wikimsglow/core/theme/color_themes.dart';
import 'package:wikimsglow/core/theme/text_selection_theme.dart';

ThemeData themes() {
  return ThemeData(
      scaffoldBackgroundColor: ColorTheme.bgScaffoldBackground,
      primaryColor: ColorTheme.primary,
      highlightColor: ColorTheme.primarySmooth,
      textSelectionTheme: textSelectionThemeData(),
      appBarTheme: appBarTheme(),
      fontFamily: AppsConfig.fontFamily,
      visualDensity: VisualDensity.adaptivePlatformDensity);
}
