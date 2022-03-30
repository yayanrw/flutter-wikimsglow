import 'package:flutter/material.dart';
import 'package:wikimsglow/core/config/apps_config.dart';
import 'package:wikimsglow/features/home/domain/entities/category.dart';
import 'package:wikimsglow/features/home/presentation/widgets/category_card.dart';
import 'package:wikimsglow/features/others/presentation/pages/under_development.dart';

class CategoryList extends StatelessWidget {
  const CategoryList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: AppsConfig.defaultPadding / 2,
      ),
      child: SizedBox(
        height: 84,
        child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemCount: demoCategories.length,
          itemBuilder: (context, index) {
            bool isFirstIndex = index == 0;
            bool isLastIndex = index == demoCategories.length - 1;

            return CategoryCard(
              icon: demoCategories[index].icon,
              title: demoCategories[index].title,
              press: () =>
                  Navigator.pushNamed(context, UnderDevelopment.routeName),
              isFirstIndex: isFirstIndex,
              isLastIndex: isLastIndex,
            );
          },
          separatorBuilder: (context, index) =>
              const SizedBox(width: AppsConfig.defaultPadding / 2),
        ),
      ),
    );
  }
}
