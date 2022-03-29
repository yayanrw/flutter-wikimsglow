import 'package:flutter/material.dart';
import 'package:wikimsglow/core/theme/color_themes.dart';

class PrimaryCheckbox extends StatefulWidget {
  const PrimaryCheckbox({Key? key}) : super(key: key);

  @override
  _PrimaryCheckboxState createState() => _PrimaryCheckboxState();
}

class _PrimaryCheckboxState extends State<PrimaryCheckbox> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isChecked = !isChecked;
        });
      },
      child: Container(
        decoration: BoxDecoration(
          color: isChecked ? ColorTheme.primary : Colors.transparent,
          borderRadius: BorderRadius.circular(4.0),
          border: isChecked
              ? null
              : Border.all(color: ColorTheme.textGrey, width: 1.5),
        ),
        width: 20,
        height: 20,
        child: isChecked
            ? const Icon(
                Icons.check,
                size: 20,
                color: Colors.white,
              )
            : null,
      ),
    );
  }
}
