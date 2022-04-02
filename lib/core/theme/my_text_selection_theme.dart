import 'package:flutter/material.dart';
import 'package:wikimsglow/core/theme/my_colors.dart';

TextSelectionThemeData textSelectionThemeData() {
  return TextSelectionThemeData(
    cursorColor: MyColors.primary,
    selectionColor: MyColors.primaryLight,
    selectionHandleColor: MyColors.primary,
  );
}
