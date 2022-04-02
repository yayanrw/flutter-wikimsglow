import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:wikimsglow/core/routes/router.gr.dart';
import 'package:wikimsglow/core/theme/color_themes.dart';
import 'package:wikimsglow/core/utils/strings.dart';
import 'package:wikimsglow/core/widgets/button/primary_button.dart';

Widget loginWithGoogleButton(BuildContext context) {
  return PrimaryButton(
    buttonColor: ColorTheme.bgWhiteSmooth,
    textValue: Strings.loginWithGoogle,
    textColor: Colors.black,
    onPressed: () => context.router.push(const UnderDevelopmentRoute()),
  );
}
