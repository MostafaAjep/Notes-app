import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../constants.dart';
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
              BlocProvider.of<AddNoteCubit>(context).color = (kColors[index]);
              setState(() {});
            },
            child: ColorItem(
              isActive: currentIndex == index,
              color: kColors[index],
            ),
          ),
          itemCount: kColors.length,
          scrollDirection: Axis.horizontal,
          physics: const BouncingScrollPhysics(),
        ),
      ),
    );
  }
}
