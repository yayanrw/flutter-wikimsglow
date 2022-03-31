import 'package:flutter/material.dart';
import 'package:wikimsglow/core/config/apps_config.dart';
import 'package:wikimsglow/core/theme/color_themes.dart';
import 'package:wikimsglow/core/theme/input_decoration_theme.dart';

Widget searchTextFormField() {
  return Container(
    width: double.infinity,
    color: ColorTheme.textWhiteGrey,
    child: Padding(
      padding: const EdgeInsets.all(AppsConfig.defaultPadding),
      child: TextFormField(
        decoration: searchInputDecoration(),
      ),
    ),
  );
}
