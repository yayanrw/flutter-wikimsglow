import 'package:flutter/material.dart';
import 'package:wikimsglow/core/config/apps_config.dart';
import 'package:wikimsglow/core/theme/my_input_decoration_theme.dart';

Widget searchTextFormField() {
  return Padding(
    padding: const EdgeInsets.all(AppsConfig.defaultPadding),
    child: TextFormField(
      textInputAction: TextInputAction.search,
      decoration: searchInputDecoration(),
    ),
  );
}
