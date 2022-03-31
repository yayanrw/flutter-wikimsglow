import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:wikimsglow/core/theme/color_themes.dart';
import 'package:wikimsglow/core/utils/menu_state.dart';
import 'package:wikimsglow/features/home/presentation/pages/home_page.dart';

class CustomBottomNavBar extends StatelessWidget {
  const CustomBottomNavBar({
    Key? key,
    required this.selectedMenu,
  }) : super(key: key);

  final MenuState selectedMenu;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 14),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            offset: const Offset(0, -15),
            blurRadius: 20,
            color: const Color(0xFFDADADA).withOpacity(0.15),
          ),
        ],
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(40),
          topRight: Radius.circular(40),
        ),
      ),
      child: SafeArea(
          top: false,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                icon: Icon(
                  IconlyBroken.home,
                  color: ColorTheme.primary,
                ),
                onPressed: () =>
                    Navigator.pushNamed(context, HomePage.routeName),
              ),
              IconButton(
                icon: Icon(
                  IconlyBroken.category,
                  color: ColorTheme.primary,
                ),
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(
                  IconlyBroken.heart,
                  color: ColorTheme.primary,
                ),
                onPressed: () {},
              ),
              IconButton(
                  icon: Icon(
                    IconlyBroken.profile,
                    color: ColorTheme.primary,
                  ),
                  onPressed: () => {}),
            ],
          )),
    );
  }
}
