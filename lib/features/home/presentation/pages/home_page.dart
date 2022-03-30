import 'package:flutter/material.dart';
import 'package:wikimsglow/core/theme/text_themes.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  static const routeName = '/home';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: RichText(
          text: TextSpan(
            text: 'wiki',
            style: textThemes(Colors.black, FontWeight.w400).headline4,
            children: [
              TextSpan(
                  text: 'msglow',
                  style: textThemes(Colors.black, FontWeight.w900).headline4),
            ],
          ),
        ),
      ),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Text('Home Page'),
      )),
    );
  }
}
