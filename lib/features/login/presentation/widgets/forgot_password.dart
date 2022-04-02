import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:wikimsglow/core/routes/router.gr.dart';
import 'package:wikimsglow/core/theme/my_colors.dart';
import 'package:wikimsglow/core/theme/my_text_themes.dart';
import 'package:wikimsglow/core/utils/strings.dart';

Widget forgotPassword(BuildContext context) {
  return TextButton(
      onPressed: () => context.router.push(const UnderDevelopmentRoute()),
      child: Text(Strings.forgotPassword,
          style: myTextThemes(color: MyColors.primary).bodyText1));
}
