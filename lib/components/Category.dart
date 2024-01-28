import 'package:flutter/material.dart';

class Category extends StatelessWidget {
  const Category(
      {super.key,
      required this.text,
      required this.color,
      required this.onTab});

  final String? text;
  final Color? color;
  final VoidCallback? onTab;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTab,
      child: Container(
        alignment: Alignment.centerLeft,
        height: 60,
        padding: const EdgeInsets.only(left: 16),
        color: color,
        width: double.infinity,
        child: Text(
          text!,
          style: const TextStyle(fontSize: 30),
        ),
      ),
    );
  }
}
