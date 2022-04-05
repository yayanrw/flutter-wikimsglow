import 'package:flutter/material.dart';
import 'package:wikimsglow/core/config/apps_config.dart';
import 'package:wikimsglow/core/theme/my_colors.dart';

class IconWithBackground extends StatelessWidget {
  const IconWithBackground({
    Key? key,
    required this.iconData,
    this.color,
    this.iconColor,
    this.onTap,
    this.size,
    this.radius,
  }) : super(key: key);

  final IconData iconData;
  final Color? color;
  final Color? iconColor;
  final double? size;
  final void Function()? onTap;
  final BorderRadiusGeometry? radius;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(AppsConfig.defaultPadding),
      child: Material(
        borderRadius: radius ??
            const BorderRadius.all(Radius.circular(AppsConfig.defaultRadius)),
        color: color ?? MyColors.primary.withOpacity(0.1),
        child: InkWell(
          onTap: onTap,
          borderRadius:
              const BorderRadius.all(Radius.circular(AppsConfig.defaultRadius)),
          child: Padding(
            padding: const EdgeInsets.all(AppsConfig.defaultPadding),
            child: Icon(
              iconData,
              color: iconColor ?? MyColors.primary,
              size: size,
            ),
          ),
        ),
      ),
    );
  }
}
