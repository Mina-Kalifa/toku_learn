import 'package:flutter/material.dart';
import 'package:toku_learn/components/item.dart';
import 'package:toku_learn/models/number.dart';

class FamilyScreen extends StatelessWidget {
  const FamilyScreen({super.key});

  final List<ItemModule> family = const [
    ItemModule(
        image: 'assets/images/family_members/family_father.png',
        jpName: '父',
        enName: 'father',
        audio: 'sounds/family_members/father.wav'),
    ItemModule(
        image: 'assets/images/family_members/family_grandfather.png',
        jpName: '祖父',
        enName: 'grandfather',
        audio: 'sounds/family_members/grand father.wav'),
    ItemModule(
        image: 'assets/images/family_members/family_grandmother.png',
        jpName: '祖母',
        enName: 'grandmother',
        audio: 'sounds/family_members/grand mother.wav'),
    ItemModule(
        image: 'assets/images/family_members/family_daughter.png',
        jpName: '娘',
        enName: 'daughter',
        audio: 'sounds/family_members/daughter.wav'),
    ItemModule(
        image: 'assets/images/family_members/family_mother.png',
        jpName: '母',
        enName: 'mother',
        audio: 'sounds/family_members/mother.wav'),
    ItemModule(
        image: 'assets/images/family_members/family_older_brother.png',
        jpName: '兄',
        enName: 'older brother',
        audio: 'sounds/family_members/older brother.wav'),
    ItemModule(
        image: 'assets/images/family_members/family_older_sister.png',
        jpName: '姉',
        enName: 'older sister',
        audio: 'sounds/family_members/older sister.wav'),
    ItemModule(
        image: 'assets/images/family_members/family_younger_sister.png',
        jpName: '妹',
        enName: 'younger sister',
        audio: 'sounds/family_members/younger sister.wav'),
    ItemModule(
        image: 'assets/images/family_members/family_younger_brother.png',
        jpName: '弟',
        enName: 'younger brother',
        audio: 'sounds/family_members/younger brother.wav'),
    ItemModule(
        image: 'assets/images/family_members/family_son.png',
        jpName: '息子',
        enName: 'son',
        audio: 'sounds/family_members/son.wav'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff473027),
        title: const Text('Family'),
      ),
      body: ListView.builder(
        itemCount: family.length,
        itemBuilder: (context, index) => Item(
          number: family[index],
          color: const Color.fromARGB(255, 219, 67, 2),
        ),
      ),
    );
  }
}
