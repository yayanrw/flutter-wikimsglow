import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:wikimsglow/core/routes/router.gr.dart';
import 'package:wikimsglow/core/theme/my_colors.dart';
import 'package:wikimsglow/core/utils/strings.dart';

class MyLayoutPage extends StatelessWidget {
  const MyLayoutPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AutoTabsScaffold(
      backgroundColor: MyColors.bgScaffoldBackground,
      routes: const [
        HomeRouter(),
        CategoryRouter(),
        FavouriteRouter(),
        ProfileRouter(),
      ],
      bottomNavigationBuilder: (_, tabsRouter) {
        return BottomNavigationBar(
            showSelectedLabels: false,
            showUnselectedLabels: false,
            currentIndex: tabsRouter.activeIndex,
            onTap: tabsRouter.setActiveIndex,
            type: BottomNavigationBarType.fixed,
            items: [
              BottomNavigationBarItem(
                label: Strings.home,
                icon: Icon(
                  tabsRouter.activeIndex == 0
                      ? IconlyBold.home
                      : IconlyBroken.home,
                  color: MyColors.primary,
                ),
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  tabsRouter.activeIndex == 1
                      ? IconlyBold.category
                      : IconlyBroken.category,
                  color: MyColors.primary,
                ),
                label: Strings.category,
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  tabsRouter.activeIndex == 2
                      ? IconlyBold.heart
                      : IconlyBroken.heart,
                  color: MyColors.primary,
                ),
                label: Strings.favourite,
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  tabsRouter.activeIndex == 3
                      ? IconlyBold.profile
                      : IconlyBroken.profile,
                  color: MyColors.primary,
                ),
                label: Strings.profile,
              ),
            ]);
      },
    );
  }
}
