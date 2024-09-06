import 'package:flutter/material.dart';
import 'custom_app_bar.dart';
import 'note_item.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      child: Column(
        children: [
          CustomAppBar(),
          SizedBox(height: 12),
          NoteItem(),
        ],
      ),
    );
  }
}
