import 'package:flutter/material.dart';
import 'package:toku_learn/components/ItemInfo.dart';
import 'package:toku_learn/models/number.dart';

class PhrasesScreen extends StatelessWidget {
  const PhrasesScreen({super.key});

  final List<ItemModule> phrases = const [
    ItemModule(
        jpName: '来ますか？',
        enName: 'are you coming?',
        audio: 'sounds/phrases/are_you_coming.wav'),
    ItemModule(
        jpName: '購読を忘れないでください',
        enName: 'dont forget subscribe',
        audio: 'sounds/phrases/dont_forget_subscribe.wav'),
    ItemModule(
        jpName: '調子はどうですか？',
        enName: 'how are you feeling?',
        audio: 'sounds/phrases/how_are_you_feeling.wav'),
    ItemModule(
        jpName: '私はアニメが好きです',
        enName: 'i love anime',
        audio: 'sounds/phrases/i_love_anime.wav'),
    ItemModule(
        jpName: '私はプログラミングが好きです',
        enName: 'i love programming',
        audio: 'sounds/phrases/i_love_programming.wav'),
    ItemModule(
        jpName: 'プログラミングは簡単です',
        enName: 'programming is easy',
        audio: 'assets/sounds/phrases/programming_is_easy.wav'),
    ItemModule(
        jpName: 'あなたの名前は何ですか？',
        enName: 'what is your name?',
        audio: 'sounds/phrases/what_is_your_name.wav'),
    ItemModule(
        jpName: 'どこに行くのですか？',
        enName: 'where are you going?',
        audio: 'sounds/phrases/where_are_you_going.wav'),
    ItemModule(
        jpName: 'はい、来ます',
        enName: 'yes im coming',
        audio: 'sounds/phrases/yes_im_coming.wav'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff473027),
        title: const Text('Phrases'),
      ),
      body: ListView.builder(
        itemCount: phrases.length,
        itemBuilder: (context, index) => Container(
          height: 95,
          color: Color.fromARGB(255, 2, 124, 138),
          child: ItemInfo(
            number: phrases[index],
          ),
        ),
      ),
    );
  }
}
