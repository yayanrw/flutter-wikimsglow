import 'package:flutter/material.dart';
import 'package:wikimsglow/core/theme/color_themes.dart';
import 'package:wikimsglow/core/theme/text_themes.dart';
import 'package:wikimsglow/core/utils/strings.dart';

Widget orText() {
  return Center(
    child: Text(
      Strings.or,
      style: textThemes(ColorTheme.textGrey, FontWeight.w500).bodyText1,
    ),
  );
}
