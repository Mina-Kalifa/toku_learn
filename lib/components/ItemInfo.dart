import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:toku_learn/models/number.dart';

class ItemInfo extends StatelessWidget {
  const ItemInfo({super.key, required this.number});
  final ItemModule number;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 12.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                number.jpName,
                style: const TextStyle(color: Colors.white, fontSize: 18),
              ),
              Text(
                number.enName,
                style: const TextStyle(color: Colors.white, fontSize: 18),
              ),
            ],
          ),
        ),
        const Spacer(
          flex: 1,
        ),
        Padding(
          padding: EdgeInsets.only(right: 16.0),
          child: IconButton(
            onPressed: () async {
              final player = AudioPlayer();
              await player.play(AssetSource(number.audio));
            },
            icon: const Icon(Icons.play_arrow),
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}
