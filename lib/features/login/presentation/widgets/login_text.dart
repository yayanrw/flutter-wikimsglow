import 'package:flutter/material.dart';
import 'package:wikimsglow/core/theme/color_themes.dart';
import 'package:wikimsglow/core/theme/text_themes.dart';
import 'package:wikimsglow/core/utils/strings.dart';

Widget loginText() {
  return Text(
    Strings.loginToYourAccount,
    style: textThemes(ColorTheme.primary, FontWeight.w700).headline4,
  );
}
