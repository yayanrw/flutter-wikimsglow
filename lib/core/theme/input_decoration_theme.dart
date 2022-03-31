import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:wikimsglow/core/config/apps_config.dart';
import 'package:wikimsglow/core/theme/color_themes.dart';
import 'package:wikimsglow/core/theme/text_themes.dart';
import 'package:wikimsglow/core/utils/strings.dart';

InputDecoration emailInputDecoration() {
  return InputDecoration(
    filled: true,
    fillColor: ColorTheme.textWhiteGrey,
    floatingLabelBehavior: FloatingLabelBehavior.never,
    prefixIcon: Padding(
      padding: const EdgeInsets.all(6),
      child: Container(
        height: 10,
        width: 10,
        decoration: BoxDecoration(
            color: ColorTheme.primarySmooth,
            borderRadius: BorderRadius.circular(AppsConfig.defaultRadius)),
        child: Icon(
          IconlyBold.message,
          color: ColorTheme.primary,
        ),
      ),
    ),
    contentPadding: const EdgeInsets.symmetric(
        vertical: AppsConfig.defaultPadding,
        horizontal: AppsConfig.defaultPadding * 2),
    hintText: Strings.emailDummy,
    labelText: Strings.email,
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
    floatingLabelBehavior: FloatingLabelBehavior.never,
    prefixIcon: Padding(
      padding: const EdgeInsets.all(6),
      child: Container(
        height: 10,
        width: 10,
        decoration: BoxDecoration(
            color: ColorTheme.primarySmooth,
            borderRadius: BorderRadius.circular(AppsConfig.defaultRadius)),
        child: Icon(
          IconlyBold.lock,
          color: ColorTheme.primary,
        ),
      ),
    ),
    contentPadding: const EdgeInsets.symmetric(
        vertical: AppsConfig.defaultPadding,
        horizontal: AppsConfig.defaultPadding * 2),
    hintText: Strings.passwordDummy,
    labelText: Strings.password,
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
    fillColor: ColorTheme.white,
    contentPadding: const EdgeInsets.all(AppsConfig.defaultPadding),
    hintStyle: textThemes(ColorTheme.textGrey, FontWeight.w500).bodyText1,
    hintText: Strings.searchProducts,
    prefixIcon: Padding(
      padding: const EdgeInsets.only(
          left: AppsConfig.defaultPadding,
          right: AppsConfig.defaultPadding / 2),
      child: Icon(Icons.search, color: ColorTheme.primary),
    ),
    border: OutlineInputBorder(
      borderSide: BorderSide.none,
      borderRadius: BorderRadius.circular(AppsConfig.defaultRadius),
    ),
  );
}
