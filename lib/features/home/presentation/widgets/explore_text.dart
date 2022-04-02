import 'package:flutter/material.dart';
import 'package:wikimsglow/core/config/apps_config.dart';
import 'package:wikimsglow/core/theme/my_colors.dart';
import 'package:wikimsglow/core/theme/text_themes.dart';
import 'package:wikimsglow/core/utils/strings.dart';

Widget exploreText() {
  return Padding(
      padding: const EdgeInsets.all(AppsConfig.defaultPadding),
      child: RichText(
        text: TextSpan(
            text: Strings.explore,
            style: textThemes(MyColors.textBlack, FontWeight.w600).headline4,
            children: [
              TextSpan(
                  text: Strings.letsExplore,
                  style:
                      textThemes(MyColors.textGrey, FontWeight.w500).headline6)
            ]),
      ));
}
