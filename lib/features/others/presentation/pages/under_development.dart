import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:wikimsglow/core/theme/color_themes.dart';
import 'package:wikimsglow/core/theme/text_themes.dart';
import 'package:wikimsglow/core/utils/strings.dart';
import 'package:wikimsglow/core/widgets/button/primary_button.dart';

class UnderDevelopment extends StatelessWidget {
  const UnderDevelopment({Key? key}) : super(key: key);

  static const routeName = '/under_development';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 32),
                child: SvgPicture.asset(
                  'assets/images/under_development.svg',
                  height: 400,
                  width: 250,
                ),
              ),
              Text(
                Strings.underDevelopment,
                style: textThemes(ColorTheme.secondary).headline5,
              ),
              const SizedBox(
                height: 48,
              ),
              PrimaryButton(
                  buttonColor: ColorTheme.primary,
                  textColor: Colors.white,
                  textValue: Strings.goBack,
                  onPressed: () => Navigator.pop(context))
            ],
          ),
        ),
      ),
    );
  }
}
