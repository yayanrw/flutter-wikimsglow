import 'package:flutter/material.dart';
import 'package:wikimsglow/core/config/apps_config.dart';
import 'package:wikimsglow/core/theme/my_text_themes.dart';

class PrimaryButton extends StatelessWidget {
  final Color buttonColor;
  final Color textColor;
  final String textValue;
  final VoidCallback onPressed;

  const PrimaryButton(
      {Key? key,
      required this.buttonColor,
      required this.textColor,
      required this.textValue,
      required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: BorderRadius.circular(AppsConfig.defaultRadius),
      elevation: 0,
      child: Container(
        decoration: BoxDecoration(
          color: buttonColor,
          borderRadius: BorderRadius.circular(AppsConfig.defaultRadius),
        ),
        child: Material(
          color: Colors.transparent,
          child: InkWell(
            onTap: () => onPressed(),
            borderRadius: BorderRadius.circular(AppsConfig.defaultRadius),
            child: Center(
              child: Padding(
                padding: const EdgeInsets.all(AppsConfig.defaultPadding / 2),
                child: Text(
                  textValue,
                  style: myTextThemes(color: textColor).headline5,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
