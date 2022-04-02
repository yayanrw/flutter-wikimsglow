import 'package:flutter/material.dart';
import 'package:wikimsglow/core/theme/my_colors.dart';
import 'package:wikimsglow/core/theme/my_text_themes.dart';
import 'package:wikimsglow/core/utils/strings.dart';

Widget loginText() {
  return Text(
    Strings.loginToYourAccount,
    style: myTextThemes(color: MyColors.primary, weight: FontWeight.w700)
        .headline4,
  );
}
