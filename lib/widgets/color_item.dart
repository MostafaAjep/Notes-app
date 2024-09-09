import 'package:flutter/material.dart';

class ColorItem extends StatelessWidget {
  const ColorItem({super.key, required this.isActive, required this.color});
  final bool isActive;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return isActive
        ? CircleAvatar(
            backgroundColor: color,
            radius: 36,
            child: const Icon(
              Icons.check,
              color: Colors.white,
            ))
        : CircleAvatar(
            radius: 36,
            backgroundColor: color,
          );
  }
}
