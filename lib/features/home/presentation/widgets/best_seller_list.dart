import 'package:flutter/material.dart';
import 'package:wikimsglow/core/config/apps_config.dart';
import 'package:wikimsglow/core/routes/router.gr.dart';
import 'package:wikimsglow/core/theme/color_themes.dart';
import 'package:wikimsglow/features/home/domain/entities/product.dart';
import 'package:wikimsglow/features/home/presentation/pages/product_detail_page.dart';
import 'product_card.dart';

class BestSellerList extends StatelessWidget {
  const BestSellerList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: AppsConfig.defaultPadding / 2,
        ),
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(
              parent: AlwaysScrollableScrollPhysics()),
          scrollDirection: Axis.horizontal,
          child: ListView.separated(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: demoBestSellers.length,
              separatorBuilder: (context, index) =>
                  const SizedBox(width: AppsConfig.defaultPadding / 2),
              itemBuilder: (context, index) {
                bool isFirstIndex = index == 0;
                bool isLastIndex = index == demoBestSellers.length - 1;
                return ProductCard(
                  title: demoBestSellers[index].title,
                  image: demoBestSellers[index].image,
                  press: () =>
                      ProductDetailRoute(product: demoNewArrivals[index]),
                  isFirstIndex: isFirstIndex,
                  isLastIndex: isLastIndex,
                );
              }),
        ),
      ),
    );
  }
}
