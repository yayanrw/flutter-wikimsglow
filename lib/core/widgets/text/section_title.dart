import 'package:flutter/material.dart';
import 'package:wikimsglow/core/config/apps_config.dart';
import 'package:wikimsglow/core/theme/my_colors.dart';
import 'package:wikimsglow/core/theme/my_text_themes.dart';
import 'package:wikimsglow/core/utils/strings.dart';

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
          AppsConfig.defaultPadding / 2, AppsConfig.defaultPadding, 4),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Text(
            text,
            style:
                myTextThemes(color: MyColors.secondary, weight: FontWeight.w700)
                    .headline6,
          ),
          Visibility(
            visible: isMoreable,
            child: GestureDetector(
                onTap: press,
                child: Text(
                  Strings.seeMore,
                  style: myTextThemes(color: MyColors.primary).caption,
                )),
          )
        ],
      ),
    );
  }
}
