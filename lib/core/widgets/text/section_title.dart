import 'package:flutter/material.dart';
import 'package:wikimsglow/core/config/apps_config.dart';
import 'package:wikimsglow/core/theme/color_themes.dart';
import 'package:wikimsglow/core/theme/text_themes.dart';

class SectionTitle extends StatelessWidget {
  const SectionTitle({
    Key? key,
    required this.text,
    required this.press,
    required this.isMoreable,
  }) : super(key: key);

  final String text;
  final bool isMoreable;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(AppsConfig.defaultPadding,
          AppsConfig.defaultPadding, AppsConfig.defaultPadding, 0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Text(
            text,
            style: textThemes(ColorTheme.secondary, FontWeight.w700).headline6,
          ),
          Visibility(
            visible: isMoreable,
            child: GestureDetector(
                onTap: press,
                child: Text(
                  'See more',
                  style: textThemes(ColorTheme.textGrey).caption,
                )),
          )
        ],
      ),
    );
  }
}
