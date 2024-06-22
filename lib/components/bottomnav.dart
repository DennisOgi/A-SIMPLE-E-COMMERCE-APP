import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class BottomNav extends StatelessWidget {
  void Function(int)? onTabChange;
  BottomNav({super.key, required this.onTabChange});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Container(
        child: GNav(
            onTabChange: onTabChange,
            tabBorderRadius: 16,
            mainAxisAlignment: MainAxisAlignment.center,
            tabBackgroundColor: Colors.grey.shade100,
            tabActiveBorder: Border.all(color: Colors.white),
            activeColor: Colors.black,
            color: Colors.grey[400],
            tabs: [
              GButton(
                icon: Icons.home,
                text: "Shop",
              ),
              GButton(
                icon: Icons.shopping_cart_outlined,
                text: "Cart",
              )
            ]),
      ),
    );
  }
}
