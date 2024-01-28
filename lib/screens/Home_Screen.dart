import 'package:flutter/material.dart';
import 'package:toku_learn/Components/Category.dart';
import 'package:toku_learn/screens/Color_Screen.dart';
import 'package:toku_learn/screens/Family_page.dart';
import 'package:toku_learn/screens/Number_page.dart';
import 'package:toku_learn/screens/Phrases_Page.dart';

// ignore: camel_case_types
class Home_Page extends StatelessWidget {
  const Home_Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff543D36),
        title: const Text(
          'Toku',
          style: TextStyle(
            fontSize: 30,
          ),
        ),
      ),
      body: Column(
        children: [
          Category(
            text: 'Numbers',
            color: const Color.fromARGB(255, 194, 232, 3),
            onTab: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return const Numbers_Screen();
                  },
                ),
              );
            },
          ),
          Category(
            text: 'FamilyMembers',
            color: const Color.fromARGB(255, 219, 67, 2),
            onTab: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return const FamilyScreen();
              }));
            },
          ),
          Category(
            text: 'Colors',
            color: const Color.fromARGB(211, 17, 73, 227),
            onTab: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return const Color_Screen();
              }));
            },
          ),
          Category(
            text: 'Phrases',
            color: Color.fromARGB(255, 2, 124, 138),
            onTab: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return const PhrasesScreen();
              }));
            },
          ),
        ],
      ),
    );
  }
}
