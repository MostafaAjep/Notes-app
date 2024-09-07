import 'package:flutter/material.dart';
import 'search_icon.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const SizedBox(height: 70),
        Text(
          title,
          style: const TextStyle(fontSize: 30),
        ),
        const Spacer(),
        const SearchIcon(),
      ],
    );
  }
}
