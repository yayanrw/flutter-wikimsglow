import 'package:flutter/material.dart';
import 'package:wikimsglow/core/theme/color_themes.dart';
import 'package:wikimsglow/core/utils/strings.dart';
import 'package:wikimsglow/core/widgets/text/section_title.dart';
import 'package:wikimsglow/features/home/presentation/widgets/best_seller_list.dart';
import 'package:wikimsglow/features/home/presentation/widgets/category_list.dart';
import 'package:wikimsglow/features/home/presentation/widgets/home_page_appbar.dart';
import 'package:wikimsglow/features/home/presentation/widgets/explore_text.dart';
import 'package:wikimsglow/features/home/presentation/widgets/new_arrival_list.dart';
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
              const CategoryList(),
              Divider(
                color: ColorTheme.textWhiteGrey,
                thickness: 8,
                height: 24,
              ),
              SectionTitle(
                text: Strings.newArrivals,
                isMoreable: false,
                press: () => {},
              ),
              const NewArrivalList(),
              SectionTitle(
                text: Strings.bestSellers,
                isMoreable: false,
                press: () => {},
              ),
              const BestSellerList(),
              SectionTitle(
                text: Strings.ourProducts,
                isMoreable: false,
                press: () => {},
              ),
              const BestSellerList(),
              const SizedBox(height: 100),
            ],
          ),
        ),
      ),
    );
  }
}
