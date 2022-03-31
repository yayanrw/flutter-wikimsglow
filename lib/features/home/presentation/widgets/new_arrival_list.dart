import 'package:flutter/material.dart';
import 'package:wikimsglow/core/config/apps_config.dart';
import 'package:wikimsglow/features/home/domain/entities/product.dart';
import 'package:wikimsglow/features/home/presentation/pages/product_detail_page.dart';

import 'product_card.dart';

class NewArrivalList extends StatelessWidget {
  const NewArrivalList({
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
              itemCount: demoNewArrivals.length,
              separatorBuilder: (context, index) =>
                  const SizedBox(width: AppsConfig.defaultPadding / 2),
              itemBuilder: (context, index) {
                bool isFirstIndex = index == 0;
                bool isLastIndex = index == demoNewArrivals.length - 1;
                return ProductCard(
                  title: demoNewArrivals[index].title,
                  image: demoNewArrivals[index].image,
                  press: () => Navigator.pushNamed(
                      context, ProductDetailPage.routeName,
                      arguments: demoNewArrivals[index]),
                  isFirstIndex: isFirstIndex,
                  isLastIndex: isLastIndex,
                );
              }),
        ),
      ),
    );
  }
}
