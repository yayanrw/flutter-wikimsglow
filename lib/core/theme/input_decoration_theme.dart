import 'package:flutter/material.dart';
import 'package:wikimsglow/core/config/apps_config.dart';
import 'package:wikimsglow/core/theme/color_themes.dart';
import 'package:wikimsglow/core/theme/text_themes.dart';
import 'package:wikimsglow/core/utils/strings.dart';

InputDecoration emailInputDecoration() {
  return InputDecoration(
    filled: true,
    fillColor: ColorTheme.textWhiteGrey,
    contentPadding: const EdgeInsets.symmetric(
        vertical: AppsConfig.defaultPadding,
        horizontal: AppsConfig.defaultPadding * 2),
    hintText: Strings.email,
    hintStyle: textThemes(ColorTheme.textGrey, FontWeight.w500).bodyText1,
    border: OutlineInputBorder(
      borderSide: BorderSide.none,
      borderRadius: BorderRadius.circular(AppsConfig.defaultRadius),
    ),
  );
}

InputDecoration passwordInputDecoration(
    bool _passwordVisible, VoidCallback _togglePasswordVisibility) {
  return InputDecoration(
    filled: true,
    fillColor: ColorTheme.textWhiteGrey,
    contentPadding: const EdgeInsets.symmetric(
        vertical: AppsConfig.defaultPadding,
        horizontal: AppsConfig.defaultPadding * 2),
    hintText: Strings.password,
    hintStyle: textThemes(ColorTheme.textGrey, FontWeight.w500).bodyText1,
    suffixIcon: IconButton(
      color: ColorTheme.textGrey,
      padding: const EdgeInsets.only(right: AppsConfig.defaultPadding * 2),
      splashRadius: 1,
      icon: Icon(_passwordVisible
          ? Icons.visibility_outlined
          : Icons.visibility_off_outlined),
      onPressed: _togglePasswordVisibility,
    ),
    border: OutlineInputBorder(
      borderSide: BorderSide.none,
      borderRadius: BorderRadius.circular(AppsConfig.defaultRadius),
    ),
  );
}

InputDecoration searchInputDecoration() {
  return InputDecoration(
    filled: true,
    fillColor: ColorTheme.textWhiteGrey,
    contentPadding: const EdgeInsets.all(AppsConfig.defaultPadding),
    hintStyle: textThemes(ColorTheme.textGrey, FontWeight.w500).bodyText1,
    hintText: Strings.searchProducts,
    prefixIcon: Padding(
      padding: const EdgeInsets.only(
          left: AppsConfig.defaultPadding,
          right: AppsConfig.defaultPadding / 2),
      child: Icon(Icons.search, color: ColorTheme.primary.withOpacity(0.5)),
    ),
    border: OutlineInputBorder(
      borderSide: BorderSide.none,
      borderRadius: BorderRadius.circular(AppsConfig.defaultRadius),
    ),
  );
}
