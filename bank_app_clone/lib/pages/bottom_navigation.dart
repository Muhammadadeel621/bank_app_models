import 'package:bank_app_clone/constants/colors.dart';
import 'package:bank_app_clone/pages/home_screen.dart';
import 'package:bank_app_clone/pages/my_cards.dart';
import 'package:bank_app_clone/pages/settings.dart';
import 'package:bank_app_clone/pages/statistics.dart';
import 'package:flutter/material.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({super.key});

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  var pages = const [HomeScreen(), MYCARDS(), Statistics(), Settings()];
  int selectedindex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        iconSize: 20,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_sharp),
            label: "Home",
            backgroundColor: AppColors.bootmNavColor,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.card_giftcard_rounded),
            label: "My Cards",
            backgroundColor: AppColors.bootmNavColor,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.trending_down_sharp),
            label: "Statistics",
            backgroundColor: AppColors.bootmNavColor,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: "Settings",
            backgroundColor: AppColors.bootmNavColor,
          ),
        ],
        onTap: (int index) {
          setState(() {
            selectedindex = index;
          });
        },
        currentIndex: selectedindex,
        selectedItemColor: AppColors.navbaritem,
        unselectedItemColor: AppColors.textColor,
        unselectedLabelStyle:
            TextStyle(fontSize: 11, color: AppColors.textColor),
        selectedLabelStyle: const TextStyle(fontSize: 11),
        showUnselectedLabels:
            true, // Ensure labels are shown for unselected items
      ),
      body: pages[selectedindex],
    );
  }
}
