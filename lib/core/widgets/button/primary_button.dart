import 'package:flutter/material.dart';
import 'package:wikimsglow/core/theme/text_themes.dart';

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
      borderRadius: BorderRadius.circular(14.0),
      elevation: 0,
      child: Container(
        height: 56,
        decoration: BoxDecoration(
          color: buttonColor,
          borderRadius: BorderRadius.circular(14.0),
        ),
        child: Material(
          color: Colors.transparent,
          child: InkWell(
            onTap: () => onPressed(),
            borderRadius: BorderRadius.circular(14.0),
            child: Center(
              child: Text(
                textValue,
                style: textThemes(textColor, FontWeight.w500).headline5,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
