import 'package:flutter/material.dart';
import 'package:wikimsglow/core/theme/color_themes.dart';
import 'package:wikimsglow/core/theme/text_themes.dart';
import 'package:wikimsglow/core/utils/strings.dart';

InputDecoration emailInputDecoration() {
  return InputDecoration(
    filled: true,
    fillColor: ColorTheme.textWhiteGrey,
    contentPadding: const EdgeInsets.symmetric(vertical: 20, horizontal: 32),
    hintText: Strings.email,
    hintStyle: textThemes(ColorTheme.textGrey, FontWeight.w500).bodyText1,
    border: OutlineInputBorder(
      borderSide: BorderSide.none,
      borderRadius: BorderRadius.circular(14.0),
    ),
  );
}

InputDecoration passwordInputDecoration(
    bool _passwordVisible, VoidCallback _togglePasswordVisibility) {
  return InputDecoration(
    filled: true,
    fillColor: ColorTheme.textWhiteGrey,
    contentPadding: const EdgeInsets.symmetric(vertical: 20, horizontal: 32),
    hintText: Strings.password,
    hintStyle: textThemes(ColorTheme.textGrey, FontWeight.w500).bodyText1,
    suffixIcon: IconButton(
      color: ColorTheme.textGrey,
      padding: const EdgeInsets.only(right: 32),
      splashRadius: 1,
      icon: Icon(_passwordVisible
          ? Icons.visibility_outlined
          : Icons.visibility_off_outlined),
      onPressed: _togglePasswordVisibility,
    ),
    border: OutlineInputBorder(
      borderSide: BorderSide.none,
      borderRadius: BorderRadius.circular(14.0),
    ),
  );
}
