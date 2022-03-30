import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'color_themes.dart';

AppBarTheme appBarTheme() {
  return AppBarTheme(
    elevation: 0,
    systemOverlayStyle: SystemUiOverlayStyle.light,
    iconTheme: const IconThemeData(color: Colors.white),
    backgroundColor: ColorTheme.primary,
  );
}
