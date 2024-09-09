import 'package:flutter/material.dart';

import 'color_item.dart';

class ColorsListView extends StatelessWidget {
  const ColorsListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: (32 * 2) + 10,
      child: Padding(
        padding: const EdgeInsets.only(bottom: 18),
        child: ListView.builder(
          itemBuilder: (context, index) => const ColorItem(),
          itemCount: 10,
          scrollDirection: Axis.horizontal,
          physics: const BouncingScrollPhysics(),
        ),
      ),
    );
  }
}
