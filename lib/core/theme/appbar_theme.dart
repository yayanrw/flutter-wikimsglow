import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'color_themes.dart';

AppBarTheme appBarTheme() {
  return AppBarTheme(
    elevation: 0,
    systemOverlayStyle: SystemUiOverlayStyle.light,
    iconTheme: IconThemeData(color: ColorTheme.primary),
    backgroundColor: ColorTheme.textWhiteGrey,
  );
}
