import 'package:flutter/material.dart';
import 'package:wikimsglow/core/theme/color_themes.dart';
import 'package:wikimsglow/core/theme/text_themes.dart';

class CategoriesCard extends StatelessWidget {
  const CategoriesCard(
      {Key? key,
      required this.title,
      required this.icons,
      required this.press,
      required this.index})
      : super(key: key);

  final String title;
  final IconData icons;
  final VoidCallback press;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: index == 0
          ? const EdgeInsets.only(left: 16, right: 4)
          : const EdgeInsets.only(left: 4, right: 4),
      child: InkWell(
        borderRadius: BorderRadius.circular(16),
        onTap: () => press(),
        child: Ink(
          width: 120,
          height: 120,
          decoration: BoxDecoration(
            color: ColorTheme.primarySmooth,
            borderRadius: BorderRadius.circular(16),
          ),
          child: Padding(
            padding: const EdgeInsets.all(12),
            child: Stack(
              children: [
                Text(
                  title,
                  style: textThemes(ColorTheme.secondaryLight, FontWeight.w600)
                      .bodyText1,
                ),
                Positioned(
                  bottom: 10,
                  right: 10,
                  child: Icon(
                    icons,
                    color: ColorTheme.textGrey,
                    size: 30,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
