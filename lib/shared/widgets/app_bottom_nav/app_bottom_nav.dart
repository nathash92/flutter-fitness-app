import 'package:flutter/material.dart';

class AppBottomNav extends StatefulWidget {

  const AppBottomNav({Key? key}) : super(key: key);

  @override
  State<AppBottomNav> createState() => _AppBottomNavState();
}

class _AppBottomNavState extends State<AppBottomNav> {

  int selectedIndex = 0;

  final List items = [
    {"name": "Home", "icon": Icons.home_outlined},
    {"name": "Meals Plan", "icon": Icons.restaurant_menu_outlined},
    {"name": "Excercise", "icon": Icons.fitness_center_outlined},
    {"name": "Profile", "icon": Icons.person_outline},
  ];

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: selectedIndex,
      backgroundColor: Colors.white,
      onTap: (int index) {
        setState(() {
          selectedIndex = index;
        });
      },
      type: BottomNavigationBarType.fixed,
      items: items
          .map(
            (e) => BottomNavigationBarItem(
              icon: Icon(e["icon"]),
              label: e["name"],
            ),
          )
          .toList(),
    );
  }
}
