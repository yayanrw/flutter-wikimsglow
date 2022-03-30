import 'package:flutter/material.dart';
import 'package:wikimsglow/core/theme/input_decoration_theme.dart';

Widget searchTextFormField() {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 24),
    child: TextFormField(
      decoration: searchInputDecoration(),
    ),
  );
}
