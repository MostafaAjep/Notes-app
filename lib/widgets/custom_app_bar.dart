import 'package:flutter/material.dart';
import 'search_icon.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar(
      {super.key, required this.title, required this.icon, this.onTap});
  final String title;
  final IconData icon;
  final void Function()? onTap;

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
        AppBarIcon(icon: icon, onTap: onTap),
      ],
    );
  }
}
