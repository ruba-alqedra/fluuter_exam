import 'package:flutter/material.dart';
import 'package:flutter_exam/screens/tab1.dart';
import 'package:flutter_exam/screens/tab2.dart';
import 'package:flutter_exam/screens/tab3.dart';

import '../models/bottom_nav.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

List<BottomNavigation> buttomNav = <BottomNavigation>[
  BottomNavigation(const Tab1()),
  BottomNavigation(const Tab2()),
  BottomNavigation(const Tab3()),
];

class _HomeScreenState extends State<HomeScreen> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF8D0000),
        title: const Text('Home'),
        centerTitle: true,
        leading: const Icon(
          Icons.add,
          color: Color(0xFF8D0000),
        ),
      ),
      body: buttomNav.elementAt(currentIndex).screen,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        unselectedItemColor: Colors.black26,
        selectedItemColor: const Color(0xff8D0000),
        selectedIconTheme: const IconThemeData(
          color: Color(0xff8D0000),
          opacity: 1,
          size: 30,
        ),
        unselectedIconTheme: const IconThemeData(
          opacity: 2,
          size: 24,
          color: Colors.black26,
        ),
        onTap: (int index) {
          setState(
            () {
              currentIndex = index;
            },
          );
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.notifications), label: 'Notification'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
      ),
    );
  }
}
