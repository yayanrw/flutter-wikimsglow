import 'package:flutter/material.dart';
import 'package:wikimsglow/core/theme/my_colors.dart';
import 'package:wikimsglow/core/theme/my_text_themes.dart';
import 'package:wikimsglow/core/utils/strings.dart';

Widget orText() {
  return Center(
    child: Text(
      Strings.or,
      style: myTextThemes(color: MyColors.textGrey).bodyText1,
    ),
  );
}
