import 'package:flutter/material.dart';
import 'package:wikimsglow/core/utils/strings.dart';
import 'package:wikimsglow/core/widgets/text/section_title.dart';
import 'package:wikimsglow/features/home/presentation/widgets/app_bar_home_page.dart';
import 'package:wikimsglow/features/home/presentation/widgets/explore_text.dart';
import 'package:wikimsglow/features/home/presentation/widgets/search_text_form_field.dart';
import 'package:wikimsglow/features/others/presentation/pages/under_development.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  static const routeName = '/home';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarHome(),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(
            parent: AlwaysScrollableScrollPhysics()),
        child: Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              exploreText(),
              searchTextFormField(),
              SectionTitle(
                text: Strings.categories,
                isMoreable: true,
                press: () =>
                    Navigator.pushNamed(context, UnderDevelopment.routeName),
              ),
              SectionTitle(
                text: Strings.ourProducts,
                isMoreable: false,
                press: () => {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
