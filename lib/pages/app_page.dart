import 'package:flutter/material.dart';
import 'package:sipas/config/color_theme.dart';
import 'package:sipas/food_recipes/food_recipes_page.dart';
import 'package:sipas/pages/articel/article_page.dart';
import 'package:sipas/pages/homepage/home_page.dart';
import 'package:sipas/pages/profile/profile_page.dart';

class AppPages extends StatefulWidget {
  const AppPages({super.key});

  @override
  State<AppPages> createState() => _AppPagesState();
}

class _AppPagesState extends State<AppPages> {
  int _selectedIndex = 0;
  List<Widget> screens = const [
    HomePage(),
    FoodRecipesPage(),
    ArticlePage(),
    ProfilePage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          selectedItemColor: orangeColor,
          unselectedItemColor: greyColor,
          showUnselectedLabels: true,
          currentIndex: _selectedIndex,
          onTap: (value) => setState(() {
            _selectedIndex = value;
          }),
          items: const [
            //{ Home Icon }
            BottomNavigationBarItem(
              label: "Beranda",
              icon: Icon(Icons.home_outlined),
            ),

            // { Food recipes Icon }
            BottomNavigationBarItem(
              label: "Resep Makanan",
              icon: Icon(Icons.soup_kitchen_outlined),
            ),

            //{ Article Icon}
            BottomNavigationBarItem(
              label: "Artikel",
              icon: Icon(Icons.article_outlined),
            ),

            //{ Profile Icon}
            BottomNavigationBarItem(
              label: "Profile ",
              icon: Icon(Icons.account_circle_outlined),
            ),
          ],
        ),
        body: SafeArea(
            child: SingleChildScrollView(
          child: Padding(
            padding:
                const EdgeInsets.only(top: 62, left: 16, right: 16, bottom: 25),
            child: screens[_selectedIndex],
          ),
        )));
  }
}
