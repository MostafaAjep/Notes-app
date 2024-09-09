import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../cubits/add_note_cubit/add_note_cubit.dart';
import 'color_item.dart';

class ColorsListView extends StatefulWidget {
  const ColorsListView({super.key, required this.isActive});
  final bool isActive;

  @override
  State<ColorsListView> createState() => _ColorsListViewState();
}

class _ColorsListViewState extends State<ColorsListView> {
  int currentIndex = 0;
  List<Color> colors = [
    Colors.amber,
    Colors.red,
    Colors.blue,
    Colors.green,
    Colors.grey,
    Colors.pink,
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: (32 * 2) + 10,
      child: Padding(
        padding: const EdgeInsets.only(bottom: 18),
        child: ListView.builder(
          itemBuilder: (context, index) => GestureDetector(
            onTap: () {
              currentIndex = index;
              BlocProvider.of<AddNoteCubit>(context).color = (colors[index]);
              setState(() {});
            },
            child: ColorItem(
              isActive: currentIndex == index,
              color: colors[index],
            ),
          ),
          itemCount: colors.length,
          scrollDirection: Axis.horizontal,
          physics: const BouncingScrollPhysics(),
        ),
      ),
    );
  }
}
