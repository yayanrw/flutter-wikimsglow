import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:wikimsglow/core/routes/router.gr.dart';
import 'package:wikimsglow/core/theme/color_themes.dart';
import 'package:wikimsglow/core/theme/text_themes.dart';
import 'package:wikimsglow/core/utils/strings.dart';

Widget dontHaveAccount(BuildContext context) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Text(
        Strings.dontHaveAccount,
        style: textThemes(ColorTheme.textGrey, FontWeight.w500).bodyText1,
      ),
      TextButton(
          onPressed: () => context.router.push(const UnderDevelopmentRoute()),
          child: Text(Strings.register,
              style:
                  textThemes(ColorTheme.primary, FontWeight.w500).bodyText1)),
    ],
  );
}
