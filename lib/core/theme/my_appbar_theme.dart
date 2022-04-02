import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:wikimsglow/core/theme/my_colors.dart';

AppBarTheme appBarTheme() {
  return AppBarTheme(
    elevation: 0,
    systemOverlayStyle: SystemUiOverlayStyle.light,
    iconTheme: IconThemeData(color: MyColors.primary),
    backgroundColor: MyColors.bgScaffoldBackground,
  );
}
