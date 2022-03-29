import 'package:flutter/material.dart';
import 'package:wikimsglow/core/theme/color_themes.dart';
import 'package:wikimsglow/core/theme/text_themes.dart';
import 'package:wikimsglow/core/utils/strings.dart';
import 'package:wikimsglow/core/widgets/checkbox/primary_checkbox.dart';

class RememberMeCheckBox extends StatelessWidget {
  const RememberMeCheckBox({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const PrimaryCheckbox(),
        const SizedBox(
          width: 12,
        ),
        Text(Strings.rememberMe,
            style: textThemes(ColorTheme.textGrey, FontWeight.w500).bodyText1),
      ],
    );
  }
}
