import 'package:flutter/material.dart';
import 'package:wikimsglow/core/theme/my_colors.dart';
import 'package:wikimsglow/core/theme/text_themes.dart';
import 'package:wikimsglow/core/utils/strings.dart';

Widget orText() {
  return Center(
    child: Text(
      Strings.or,
      style: textThemes(MyColors.textGrey, FontWeight.w500).bodyText1,
    ),
  );
}
