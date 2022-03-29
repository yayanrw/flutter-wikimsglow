import 'package:flutter/material.dart';
import 'package:wikimsglow/core/theme/color_themes.dart';
import 'package:wikimsglow/core/theme/text_themes.dart';
import 'package:wikimsglow/core/utils/strings.dart';

TextButton forgotPassword() {
  return TextButton(
      onPressed: () {},
      child: Text(Strings.forgotPassword,
          style: textThemes(ColorTheme.primary, FontWeight.w500).bodyText1));
}
