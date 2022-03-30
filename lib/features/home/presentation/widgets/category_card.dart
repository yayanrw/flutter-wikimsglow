import 'package:flutter/material.dart';
import 'package:wikimsglow/core/config/apps_config.dart';
import 'package:wikimsglow/core/theme/color_themes.dart';
import 'package:wikimsglow/core/theme/text_themes.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({
    Key? key,
    required this.icon,
    required this.title,
    required this.press,
    required this.isFirstIndex,
    required this.isLastIndex,
  }) : super(key: key);

  final String icon, title;
  final VoidCallback press;
  final bool isFirstIndex, isLastIndex;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: isFirstIndex
          ? const EdgeInsets.only(left: AppsConfig.defaultPadding)
          : (isLastIndex
              ? const EdgeInsets.only(right: AppsConfig.defaultPadding)
              : EdgeInsets.zero),
      child: OutlinedButton(
        onPressed: press,
        style: OutlinedButton.styleFrom(
          shape: const RoundedRectangleBorder(
            borderRadius:
                BorderRadius.all(Radius.circular(AppsConfig.defaultRadius)),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(AppsConfig.defaultPadding / 2),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                icon,
                height: 35,
                width: 35,
              ),
              const SizedBox(height: AppsConfig.defaultPadding / 2),
              Text(
                title,
                maxLines: 1,
                style: textThemes(ColorTheme.textBlack).subtitle2,
              )
            ],
          ),
        ),
      ),
    );
  }
}
