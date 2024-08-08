import 'package:flutter/material.dart';
import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:player_stats_app/screens/playercomparison.dart';
import 'package:player_stats_app/screens/playerstats.dart';
import 'package:player_stats_app/utils.dart';

class Navigationwidget extends StatefulWidget {
  const Navigationwidget({super.key});

  @override
  State<Navigationwidget> createState() => _NavigationwidgetState();
}

class _NavigationwidgetState extends State<Navigationwidget> {
  int currentIndex = 0;

  List<IconData> listIcons = [
    Icons.home_outlined,
    Icons.person_2_outlined,
    Icons.person_3_outlined,
    Icons.settings_outlined,
  ];

  List screens = [
    Playerstats(),
    Playercomparison(),
    Playerstats(),
    Playercomparison(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
        shape: CircleBorder(),
        backgroundColor: deepb,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: AnimatedBottomNavigationBar(
        backgroundColor: lightpurp,
        icons: listIcons,
        notchSmoothness: NotchSmoothness.verySmoothEdge,
        leftCornerRadius: 16,
        rightCornerRadius: 16,
        activeColor: deeppurp,
        gapLocation: GapLocation.center,
        onTap: (int index) {
          setState(() {
            currentIndex = index;
          });
        },
        activeIndex: currentIndex,
      ),
      body: screens[currentIndex],
    );
  }
}
