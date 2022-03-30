import 'package:flutter/material.dart';
import 'package:wikimsglow/core/utils/strings.dart';
import 'package:wikimsglow/core/widgets/text/section_title.dart';
import 'package:wikimsglow/features/home/presentation/widgets/app_bar_home_page.dart';
import 'package:wikimsglow/features/home/presentation/widgets/categories_card.dart';
import 'package:wikimsglow/features/home/presentation/widgets/search_text_form_field.dart';
import 'package:wikimsglow/features/others/presentation/pages/under_development.dart';

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
            const SizedBox(height: 16),
            SectionTitle(
              text: Strings.categories,
              isMoreable: true,
              press: () =>
                  Navigator.pushNamed(context, UnderDevelopment.routeName),
            ),
            const SizedBox(height: 8),
            SizedBox(
              height: 120,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemCount: 5,
                itemBuilder: (context, index) {
                  return CategoriesCard(
                    icons: Icons.coffee,
                    title: 'Skincare $index',
                    press: () => Navigator.pushNamed(
                        context, UnderDevelopment.routeName),
                    index: index,
                  );
                },
              ),
            )
          ],
        ),
      )),
    );
  }
}
