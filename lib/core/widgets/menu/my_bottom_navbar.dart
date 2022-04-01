import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:wikimsglow/core/theme/color_themes.dart';
import 'package:wikimsglow/core/utils/strings.dart';
import 'package:wikimsglow/core/widgets/navigator/category_navigator.dart';
import 'package:wikimsglow/core/widgets/navigator/favourite_navigator.dart';
import 'package:wikimsglow/core/widgets/navigator/home_navigator.dart';
import 'package:wikimsglow/core/widgets/navigator/profile_navigator.dart';

class MyBottomNavbar extends StatefulWidget {
  const MyBottomNavbar({Key? key}) : super(key: key);

  @override
  State<MyBottomNavbar> createState() => _MyBottomNavbarState();
}

class _MyBottomNavbarState extends State<MyBottomNavbar> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          showSelectedLabels: false,
          showUnselectedLabels: false,
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
              label: Strings.home,
              icon: Icon(
                _currentIndex == 0 ? IconlyBold.home : IconlyBroken.home,
                color: ColorTheme.primary,
              ),
            ),
            BottomNavigationBarItem(
              icon: Icon(
                _currentIndex == 1
                    ? IconlyBold.category
                    : IconlyBroken.category,
                color: ColorTheme.primary,
              ),
              label: Strings.category,
            ),
            BottomNavigationBarItem(
              icon: Icon(
                _currentIndex == 2 ? IconlyBold.heart : IconlyBroken.heart,
                color: ColorTheme.primary,
              ),
              label: Strings.favourite,
            ),
            BottomNavigationBarItem(
              icon: Icon(
                _currentIndex == 3 ? IconlyBold.profile : IconlyBroken.profile,
                color: ColorTheme.primary,
              ),
              label: Strings.profile,
            ),
          ],
          currentIndex: _currentIndex,
          onTap: (int index) {
            setState(() {
              _currentIndex = index;
            });
          }),
      body: SafeArea(
        top: false,
        child: IndexedStack(
          index: _currentIndex,
          children: const [
            HomeNavigator(),
            CategoryNavigator(),
            FavouriteNavigator(),
            ProfileNavigator()
          ],
        ),
      ),
    );
  }
}
