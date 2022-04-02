import 'package:flutter/material.dart';
import 'package:wikimsglow/core/config/apps_config.dart';
import 'package:wikimsglow/core/theme/my_colors.dart';
import 'package:wikimsglow/core/theme/my_text_themes.dart';

class ProductCard extends StatelessWidget {
  const ProductCard(
      {Key? key,
      required this.image,
      required this.title,
      required this.press,
      required this.isFirstIndex,
      required this.isLastIndex})
      : super(key: key);
  final String image, title;
  final VoidCallback press;
  final bool isFirstIndex, isLastIndex;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        width: 154,
        padding: isFirstIndex
            ? const EdgeInsets.only(left: AppsConfig.defaultPadding)
            : (isLastIndex
                ? const EdgeInsets.only(right: AppsConfig.defaultPadding)
                : EdgeInsets.zero),
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius:
              BorderRadius.all(Radius.circular(AppsConfig.defaultRadius)),
        ),
        child: Column(
          children: [
            Container(
              width: double.infinity,
              decoration: const BoxDecoration(
                borderRadius:
                    BorderRadius.all(Radius.circular(AppsConfig.defaultRadius)),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(AppsConfig.defaultRadius),
                child: Image.asset(
                  image,
                  height: 132,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(height: AppsConfig.defaultPadding / 2),
            Expanded(
              child: Text(
                title,
                maxLines: 2,
                style: myTextThemes().subtitle2,
              ),
            )
          ],
        ),
      ),
    );
  }
}
