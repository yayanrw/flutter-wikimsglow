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

  static const routeName = '/my_bottom_navbar';

  @override
  State<MyBottomNavbar> createState() => _MyBottomNavbarState();
}

class _MyBottomNavbarState extends State<MyBottomNavbar> {
  int _currentIndex = 0;
  PageController? _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    _pageController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(
          boxShadow: <BoxShadow>[
            BoxShadow(
              color: Colors.black,
              blurRadius: 10,
              spreadRadius: -5,
            ),
          ],
        ),
        child: BottomNavigationBar(
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
                  _currentIndex == 3
                      ? IconlyBold.profile
                      : IconlyBroken.profile,
                  color: ColorTheme.primary,
                ),
                label: Strings.profile,
              ),
            ],
            currentIndex: _currentIndex,
            onTap: (int index) {
              setState(() {
                _currentIndex = index;
                _pageController!.animateToPage(index,
                    duration: const Duration(milliseconds: 300),
                    curve: Curves.easeOut);
              });
            }),
      ),
      body: SafeArea(
        top: false,
        child: PageView(
          controller: _pageController,
          onPageChanged: (index) {
            setState(() => _currentIndex = index);
          },
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
