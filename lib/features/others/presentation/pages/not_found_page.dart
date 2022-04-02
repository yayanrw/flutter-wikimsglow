import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:wikimsglow/core/theme/my_colors.dart';
import 'package:wikimsglow/core/theme/text_themes.dart';
import 'package:wikimsglow/core/utils/strings.dart';
import 'package:wikimsglow/core/widgets/button/primary_button.dart';

class NotFoundPage extends StatelessWidget {
  const NotFoundPage({Key? key}) : super(key: key);

  static const routeName = '/not_found';

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
                padding: const EdgeInsets.symmetric(horizontal: 48),
                child: SvgPicture.asset(
                  'assets/images/404.svg',
                  height: 350,
                  width: 200,
                ),
              ),
              Text(
                Strings.notFound,
                style: textThemes(MyColors.secondary).headline5,
              ),
              const SizedBox(
                height: 48,
              ),
              PrimaryButton(
                  buttonColor: MyColors.primary,
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
