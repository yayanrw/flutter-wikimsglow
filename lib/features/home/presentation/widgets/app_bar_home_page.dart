import 'package:flutter/material.dart';
import 'package:wikimsglow/core/theme/text_themes.dart';
import 'package:wikimsglow/core/utils/strings.dart';

AppBar appBarHome() {
  return AppBar(
    automaticallyImplyLeading: false,
    centerTitle: true,
    title: RichText(
      text: TextSpan(
        text: Strings.wiki,
        style: textThemes(Colors.black, FontWeight.w400).headline4,
        children: [
          TextSpan(
              text: Strings.msglow,
              style: textThemes(Colors.black, FontWeight.w900).headline4),
        ],
      ),
    ),
  );
}
