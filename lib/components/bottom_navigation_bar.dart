import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class MyBottomNavBar extends StatelessWidget {
  final void Function(int)? onTabChanged;
  const MyBottomNavBar({
    super.key,
    required this.onTabChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: GNav(
        color: Colors.white,
        activeColor: Colors.white,
        tabBackgroundColor: Colors.red,
        mainAxisAlignment: MainAxisAlignment.center,
        tabBorderRadius: 30,
        onTabChange: (value) => onTabChanged!(value),
        tabs: const [
          GButton(
            icon: Icons.home,
            text: "Shop",
          ),
          GButton(
            icon: Icons.shopping_bag_rounded,
            text: "Cart",
          )
        ],
      ),
    );
  }
}
