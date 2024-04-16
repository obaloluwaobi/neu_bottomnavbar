import 'package:flutter/material.dart';
import 'package:neu_bottomnavbar/bottomnavbar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  void navBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      //i used stack widget to make the elevating effect 'but is not advisable' !
      body: Stack(
        children: [
          //pages
          _pages[_selectedIndex],
          //bottomnav bar
          Align(
            alignment: Alignment.bottomCenter,
            child: Material(
                shadowColor: Colors.transparent,
                color: Colors.transparent,
                elevation: 0,
                child:
                    BottomNarBar(onTabChange: (index) => navBottomBar(index))),
          )
        ],
      ),
    );
  }

//add pages here
  final List<Widget> _pages = [
    const Center(
      child: Text(
        'Homepage',
        style: TextStyle(
            fontSize: 30, color: Colors.white, fontWeight: FontWeight.bold),
      ),
    ),
    const Center(
      child: Text(
        'Cartpage',
        style: TextStyle(
            fontSize: 30, color: Colors.white, fontWeight: FontWeight.bold),
      ),
    ),
    const Center(
      child: Text(
        'Favourite',
        style: TextStyle(
            fontSize: 30, color: Colors.white, fontWeight: FontWeight.bold),
      ),
    ),
    const Center(
      child: Text(
        'Profile',
        style: TextStyle(
            fontSize: 30, color: Colors.white, fontWeight: FontWeight.bold),
      ),
    ),
  ];
}
