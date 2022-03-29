import 'package:flutter/material.dart';
import 'package:wikimsglow/core/theme/color_themes.dart';
import 'package:wikimsglow/core/theme/text_themes.dart';
import 'package:wikimsglow/core/utils/strings.dart';
import 'package:wikimsglow/features/others/presentation/pages/under_development.dart';

TextButton forgotPassword(BuildContext context) {
  return TextButton(
      onPressed: () => Navigator.pushNamed(context, UnderDevelopment.routeName),
      child: Text(Strings.forgotPassword,
          style: textThemes(ColorTheme.primary, FontWeight.w500).bodyText1));
}
