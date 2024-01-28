import 'package:flutter/material.dart';
import 'package:toku_learn/components/item.dart';
import 'package:toku_learn/models/number.dart';

class Color_Screen extends StatelessWidget {
  const Color_Screen({super.key});

  final List<ItemModule> colors = const [
    ItemModule(
      audio: 'sounds/colors/black.wav',
      jpName: 'Burakku',
      enName: 'black',
      image: 'assets/images/colors/color_black.png',
    ),
    ItemModule(
      audio: 'sounds/colors/brown.wav',
      jpName: 'Chairo',
      enName: 'brown',
      image: 'assets/images/colors/color_brown.png',
    ),
    ItemModule(
      audio: 'sounds/colors/dusty yellow.wav',
      jpName: 'Hokori ppoi kiiro',
      enName: 'dusty yellow',
      image: 'assets/images/colors/color_dusty_yellow.png',
    ),
    ItemModule(
      audio: 'sounds/colors/gray.wav',
      jpName: 'Gurē',
      enName: 'gray',
      image: 'assets/images/colors/color_gray.png',
    ),
    ItemModule(
      audio: 'sounds/colors/green.wav',
      jpName: 'Midori',
      enName: 'green',
      image: 'assets/images/colors/color_green.png',
    ),
    ItemModule(
      audio: 'sounds/colors/red.wav',
      jpName: 'Aka',
      enName: 'red',
      image: 'assets/images/colors/color_red.png',
    ),
    ItemModule(
      audio: 'sounds/colors/white.wav',
      jpName: 'Shiro',
      enName: 'white',
      image: 'assets/images/colors/color_white.png',
    ),
    ItemModule(
      audio: 'sounds/colors/yellow.wav',
      jpName: 'Kiiro',
      enName: 'yellow',
      image: 'assets/images/colors/yellow.png',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff473027),
        title: const Text('Colors'),
      ),
      body: ListView.builder(
        itemCount: colors.length,
        itemBuilder: (context, index) => Item(
          number: colors[index],
          color: const Color.fromARGB(211, 17, 73, 227),
        ),
      ),
    );
  }
}
