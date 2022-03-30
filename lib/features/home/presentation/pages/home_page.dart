import 'package:flutter/material.dart';
import 'package:wikimsglow/core/config/apps_config.dart';
import 'package:wikimsglow/core/theme/color_themes.dart';
import 'package:wikimsglow/core/theme/text_themes.dart';
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
              const SizedBox(height: 8),
              categoriesSection(),
              const SizedBox(height: 16),
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

  Padding exploreText() {
    return Padding(
        padding: const EdgeInsets.all(AppsConfig.defaultPadding),
        child: RichText(
          text: TextSpan(
              text: Strings.explore,
              style:
                  textThemes(ColorTheme.textBlack, FontWeight.w600).headline4,
              children: [
                TextSpan(
                    text: Strings.ourSkinCare,
                    style: textThemes(ColorTheme.textGrey, FontWeight.w500)
                        .headline6)
              ]),
        ));
  }

  SizedBox categoriesSection() {
    return SizedBox(
      height: 120,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemCount: 5,
        itemBuilder: (context, index) {
          return CategoriesCard(
            icons: Icons.coffee,
            title: 'Skincare $index',
            press: () =>
                Navigator.pushNamed(context, UnderDevelopment.routeName),
            index: index,
          );
        },
      ),
    );
  }
}
