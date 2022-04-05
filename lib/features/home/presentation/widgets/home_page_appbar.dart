import 'package:flutter/material.dart';
import 'package:wikimsglow/core/theme/my_colors.dart';
import 'package:wikimsglow/core/theme/my_text_themes.dart';
import 'package:wikimsglow/core/utils/strings.dart';

AppBar appBarHome() {
  return AppBar(
    automaticallyImplyLeading: false,
    centerTitle: true,
    title: RichText(
      text: TextSpan(
        text: Strings.wiki,
        style: myTextThemes(color: MyColors.primary).headline4,
        children: [
          TextSpan(
              text: Strings.msglow,
              style:
                  myTextThemes(color: MyColors.primary, weight: FontWeight.w900)
                      .headline4),
        ],
      ),
    ),
  );
}
