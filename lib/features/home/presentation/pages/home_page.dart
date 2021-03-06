import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:wikimsglow/core/config/apps_config.dart';
import 'package:wikimsglow/core/routes/router.gr.dart';
import 'package:wikimsglow/core/theme/my_colors.dart';
import 'package:wikimsglow/core/utils/strings.dart';
import 'package:wikimsglow/core/widgets/text/section_title.dart';
import 'package:wikimsglow/features/home/presentation/widgets/best_seller_list.dart';
import 'package:wikimsglow/features/home/presentation/widgets/category_list.dart';
import 'package:wikimsglow/features/home/presentation/widgets/home_page_appbar.dart';
import 'package:wikimsglow/features/home/presentation/widgets/explore_text.dart';
import 'package:wikimsglow/features/home/presentation/widgets/new_arrival_list.dart';
import 'package:wikimsglow/features/home/presentation/widgets/search_text_form_field.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  static const routeName = '/home';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: appBarHome(),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(
            parent: AlwaysScrollableScrollPhysics()),
        child: Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 105),
              Container(
                  color: MyColors.bgScaffoldBackground,
                  width: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      exploreText(),
                      searchTextFormField(),
                    ],
                  )),
              Container(
                height: 20,
                color: MyColors.bgScaffoldBackground,
                child: Container(
                  decoration: BoxDecoration(
                      color: MyColors.white,
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(AppsConfig.defaultRadius * 2),
                        topRight: Radius.circular(AppsConfig.defaultRadius * 2),
                      )),
                ),
              ),
              Container(
                color: MyColors.white,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SectionTitle(
                        text: Strings.categories,
                        isMoreable: true,
                        press: () =>
                            context.router.push(const UnderDevelopmentRoute())),
                    const CategoryList(),
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
                    const SizedBox(
                      height: 50,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
