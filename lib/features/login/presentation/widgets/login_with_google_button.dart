import 'package:flutter/material.dart';
import 'package:wikimsglow/core/theme/color_themes.dart';
import 'package:wikimsglow/core/utils/strings.dart';
import 'package:wikimsglow/core/widgets/button/primary_button.dart';
import 'package:wikimsglow/features/others/presentation/pages/under_development.dart';

Widget loginWithGoogleButton(BuildContext context) {
  return PrimaryButton(
    buttonColor: ColorTheme.bgWhiteSmooth,
    textValue: Strings.loginWithGoogle,
    textColor: Colors.black,
    onPressed: () => Navigator.pushNamed(context, UnderDevelopment.routeName),
  );
}
