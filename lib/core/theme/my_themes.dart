import 'package:flutter/material.dart';
import 'package:wikimsglow/core/config/apps_config.dart';
import 'package:wikimsglow/core/theme/my_appbar_theme.dart';
import 'package:wikimsglow/core/theme/my_colors.dart';
import 'package:wikimsglow/core/theme/my_text_selection_theme.dart';

ThemeData myThemes() {
  return ThemeData(
      scaffoldBackgroundColor: MyColors.bgScaffoldBackground,
      primaryColor: MyColors.primary,
      highlightColor: MyColors.primarySmooth,
      textSelectionTheme: textSelectionThemeData(),
      appBarTheme: appBarTheme(),
      fontFamily: AppsConfig.fontFamily,
      visualDensity: VisualDensity.adaptivePlatformDensity);
}
