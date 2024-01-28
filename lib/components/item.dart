import 'package:flutter/material.dart';
import 'package:toku_learn/components/ItemInfo.dart';
import 'package:toku_learn/models/number.dart';

class Item extends StatelessWidget {
  const Item({super.key, required this.number, required this.color});
  final ItemModule number;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 95,
      color: color,
      child: Row(
        children: [
          Container(
            color: const Color(0xffFFF3DC),
            child: Image.asset(number.image!),
          ),
          Expanded(
            child: ItemInfo(number: number),
          ),
        ],
      ),
    );
  }
}
