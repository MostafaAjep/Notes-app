import 'package:flutter/material.dart';

import 'search_icon.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        SizedBox(height: 70),
        Text(
          'Notes',
          style: TextStyle(fontSize: 30),
        ),
        Spacer(),
        SearchIcon(),
      ],
    );
  }
}
