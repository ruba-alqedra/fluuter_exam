import 'package:flutter/material.dart';

import '../widgets/my_card.dart';

class Tab1 extends StatelessWidget {
  const Tab1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
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
    );
  }
}
