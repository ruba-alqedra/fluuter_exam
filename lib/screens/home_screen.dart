import 'package:flutter/material.dart';

import '../widgets/my_card.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

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
      body: SingleChildScrollView(
        child: Column(
          children: const [
            MyCard(
                image: 'images/hqdefault.png',
                text1: 'Beef,& Vegetable Rice',
                text2: '\nRice with some vegetable rolled\n'
                    'in a “pita” bread with some of the\n salty pickles.\n\n',
                time: 'Delivery Time: 1:00 -3:00pm'),
            MyCard(
                image: 'images/pizza.png',
                text1: 'Pizza with Vegatables',
                text2:
                    '\nHuge pie topped with mozzarella\n cheese, mushrooms, onion, tomato,\n delicious pizza \n',
                time: '\nDelivery Time: 10:00 -2:00pm'),
            MyCard(
                image: 'images/black_forest_cake.png',
                text1: 'Forest Cake',
                text2:
                    '\nLorem ipsum dolor sit amet,\n consetetur sadipscing elitr, sed\n\n',
                time: 'Delivery Time: 1:00 -3:00pm'),
            MyCard(
                image: 'images/imag4.png',
                text1: 'Beef,& Vegetable Rice',
                text2: '\nRice with some vegetable rolled\n'
                    'in a “pita” bread with some of the\n salty pickles.\n',
                time: 'Delivery Time: 1:00 -3:00pm'),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
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
