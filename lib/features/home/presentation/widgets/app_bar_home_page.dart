import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:wikimsglow/core/theme/text_themes.dart';
import 'package:wikimsglow/core/utils/strings.dart';

AppBar appBarHome() {
  return AppBar(
    automaticallyImplyLeading: false,
    centerTitle: true,
    leading: IconButton(
      icon: SvgPicture.asset('assets/icons/menu.svg'),
      onPressed: () {},
    ),
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
