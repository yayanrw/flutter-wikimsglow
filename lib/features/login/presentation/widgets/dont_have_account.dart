import 'package:flutter/material.dart';
import 'package:wikimsglow/core/theme/color_themes.dart';
import 'package:wikimsglow/core/theme/text_themes.dart';
import 'package:wikimsglow/core/utils/strings.dart';

class DontHaveAccount extends StatelessWidget {
  const DontHaveAccount({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          Strings.dontHaveAccount,
          style: textThemes(ColorTheme.textGrey, FontWeight.w500).bodyText1,
        ),
        TextButton(
            onPressed: () => {},
            child: Text(Strings.register,
                style:
                    textThemes(ColorTheme.primary, FontWeight.w500).bodyText1)),
      ],
    );
  }
}
