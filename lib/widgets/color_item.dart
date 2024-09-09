import 'package:flutter/material.dart';

class ColorItem extends StatelessWidget {
  const ColorItem({super.key, required this.isActive, required this.color});
  final bool isActive;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return isActive
        ? Padding(
            padding: const EdgeInsets.only(right: 6),
            child: CircleAvatar(
                backgroundColor: color,
                radius: 34,
                child: const Icon(
                  Icons.check,
                  color: Colors.white,
                )),
          )
        : Padding(
            padding: const EdgeInsets.only(right: 6),
            child: CircleAvatar(
              radius: 34,
              backgroundColor: color,
            ),
          );
  }
}
