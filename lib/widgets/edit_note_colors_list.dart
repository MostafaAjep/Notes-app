import 'package:flutter/material.dart';
import '../constants.dart';
import '../models/note_model.dart';
import 'color_item.dart';

class EditNoteColorsList extends StatefulWidget {
  const EditNoteColorsList({super.key, required this.note});
  final NoteModel note;

  @override
  State<EditNoteColorsList> createState() => _EditNoteColorsListState();
}

class _EditNoteColorsListState extends State<EditNoteColorsList> {
  late int currentIndex;
  @override
  void initState() {
    currentIndex = kColors.indexOf(Color(widget.note.color));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 8,
      ),
      child: SizedBox(
        height: (32 * 2) + 10,
        child: ListView.builder(
          itemBuilder: (context, index) => GestureDetector(
            onTap: () {
              currentIndex = index;
              widget.note.color = kColors[index].value;
              setState(() {});
            },
            child: ColorItem(
              color: kColors[index],
              isActive: currentIndex == index,
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
