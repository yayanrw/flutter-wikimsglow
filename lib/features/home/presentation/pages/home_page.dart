import 'package:flutter/material.dart';
import 'package:wikimsglow/core/theme/text_themes.dart';
import 'package:wikimsglow/core/utils/strings.dart';
import 'package:wikimsglow/features/home/presentation/widgets/app_bar_home_page.dart';
import 'package:wikimsglow/features/home/presentation/widgets/search_text_form_field.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  static const routeName = '/home';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarHome(),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          children: [
            searchTextFormField(),
          ],
        ),
      )),
    );
  }
}
