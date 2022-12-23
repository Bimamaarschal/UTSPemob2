import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_tugas1_bimamaarschal/pages/time_page.dart';
import 'package:flutter_application_tugas1_bimamaarschal/pages/home_page.dart';
import 'package:flutter_application_tugas1_bimamaarschal/pages/grid_view_page.dart';
import 'package:flutter_application_tugas1_bimamaarschal/pages/toast_page.dart';
import 'package:flutter_application_tugas1_bimamaarschal/pages/date_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _currentIndex = 0;
  final PageController _pageController = PageController();

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox.expand(
        child: PageView(
          controller: _pageController,
          onPageChanged: (index) => setState(() => _currentIndex = index),
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            const HomePage(),
            const GridPage(),
            const DatePage(),
            const TimePage(),
            const ToastPage(),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavyBar(
        selectedIndex: _currentIndex,
        showElevation: false,
        itemCornerRadius: 5,
        curve: Curves.easeIn,
        onItemSelected: (index) {
          setState(() => _currentIndex = index);
          _pageController.jumpToPage(_currentIndex);
        },
        items: [
          BottomNavyBarItem(
            icon: const Icon(Icons.home),
            title: const Text('Home'),
            activeColor: Colors.red,
            textAlign: TextAlign.center,
          ),
          BottomNavyBarItem(
            icon: const Icon(Icons.menu_book),
            title: const Text('Tugas'),
            activeColor: Colors.blue,
            textAlign: TextAlign.center,
          ),
          BottomNavyBarItem(
            icon: const Icon(Icons.date_range),
            title: const Text('Acara'),
            activeColor: Colors.green,
            textAlign: TextAlign.center,
          ),
          BottomNavyBarItem(
            icon: const Icon(Icons.punch_clock),
            title: const Text('Tambahan'),
            activeColor: Colors.brown,
            textAlign: TextAlign.center,
          ),
          BottomNavyBarItem(
            icon: const Icon(Icons.messenger_rounded),
            title: const Text('Pesan'),
            activeColor: Colors.purple,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
