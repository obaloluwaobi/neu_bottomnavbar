import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

//bottomNavbar UI
class BottomNarBar extends StatelessWidget {
  final void Function(int)? onTabChange;
  const BottomNarBar({
    super.key,
    required this.onTabChange,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.grey[900],
          borderRadius: BorderRadius.circular(15),
          boxShadow: [
            const BoxShadow(
              color: Colors.black,
              offset: Offset(5, 5),
              blurRadius: 10,
              spreadRadius: -1,
            ),
            BoxShadow(
              color: Colors.grey.shade800,
              offset: const Offset(-4, -4),
              spreadRadius: 1,
              blurRadius: 10,
            ),
          ]),
      margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 30),
      child: GNav(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          onTabChange: (value) => onTabChange!(value),
          tabBackgroundGradient: const LinearGradient(
            colors: [Color(0xff205788), Color(0xff6D3C7D)],
          ),
          tabBorderRadius: 20,
          tabs: [
            GButton(
              icon: Icons.home_outlined,
              text: 'Home',
              textColor: Colors.white,
              iconActiveColor: Colors.white,
              iconColor: Colors.grey[300],
              borderRadius: BorderRadius.circular(10),
              padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
              margin: const EdgeInsets.symmetric(
                vertical: 10,
              ),
            ),
            GButton(
              icon: Icons.shopping_cart,
              text: 'Cart',
              textColor: Colors.white,
              iconActiveColor: Colors.white,
              iconColor: Colors.grey[300],
              borderRadius: BorderRadius.circular(10),
              padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
            ),
            GButton(
              icon: Icons.bookmark,
              text: 'Saved',
              textColor: Colors.white,
              iconActiveColor: Colors.white,
              iconColor: Colors.grey[300],
              borderRadius: BorderRadius.circular(10),
              padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
            ),
            GButton(
              textSize: 2,
              icon: Icons.person_rounded,
              text: 'Profile',
              textColor: Colors.white,
              iconActiveColor: Colors.white,
              iconColor: Colors.grey[300],
              borderRadius: BorderRadius.circular(10),
              padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
            ),
          ]),
    );
  }
}
