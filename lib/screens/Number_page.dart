import 'package:flutter/material.dart';
import 'package:toku_learn/components/item.dart';
import 'package:toku_learn/models/number.dart';

class Numbers_Screen extends StatelessWidget {
  const Numbers_Screen({super.key});

  final List<ItemModule> numbers = const [
    ItemModule(
        image: 'assets/images/numbers/number_one.png',
        jpName: 'ichi',
        enName: 'one',
        audio: 'sounds/numbers/number_one_sound.mp3'),
    ItemModule(
        image: 'assets/images/numbers/number_two.png',
        jpName: 'ni',
        enName: 'two',
        audio: 'sounds/numbers/number_two_sound.mp3'),
    ItemModule(
        image: 'assets/images/numbers/number_three.png',
        jpName: 'san',
        enName: 'three',
        audio: 'sounds/numbers/number_three_sound.mp3'),
    ItemModule(
        image: 'assets/images/numbers/number_four.png',
        jpName: 'shi',
        enName: 'four',
        audio: 'sounds/numbers/number_four_sound.mp3'),
    ItemModule(
        image: 'assets/images/numbers/number_five.png',
        jpName: 'go',
        enName: 'five',
        audio: 'sounds/numbers/number_five_sound.mp3'),
    ItemModule(
        image: 'assets/images/numbers/number_six.png',
        jpName: 'roku',
        enName: 'six',
        audio: 'sounds/numbers/number_six_sound.mp3'),
    ItemModule(
        image: 'assets/images/numbers/number_seven.png',
        jpName: 'shichi',
        enName: 'seven',
        audio: 'sounds/numbers/number_seven_sound.mp3'),
    ItemModule(
        image: 'assets/images/numbers/number_eight.png',
        jpName: 'hachi',
        enName: 'eight',
        audio: 'sounds/numbers/number_eight_sound.mp3'),
    ItemModule(
        image: 'assets/images/numbers/number_nine.png',
        jpName: 'kyuu',
        enName: 'nine',
        audio: 'sounds/numbers/number_nine_sound.mp3'),
    ItemModule(
        image: 'assets/images/numbers/number_ten.png',
        jpName: 'juu',
        enName: 'ten',
        audio: 'sounds/numbers/number_ten_sound.mp3'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff473027),
        title: const Text('Numbers'),
      ),
      body: ListView.builder(
        itemCount: numbers.length,
        itemBuilder: (context, index) => Item(
          number: numbers[index],
          color: Color.fromARGB(255, 85, 101, 0),
        ),
      ),
    );
  }
}
