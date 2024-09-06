import 'package:flutter/material.dart';
import 'package:notes_app/widgets/notes_view_body.dart';
import '../widgets/Add_note_Bottom_sheet.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
              //if you want to change the shape change it here
              // shape: const RoundedRectangleBorder(
              //   borderRadius: BorderRadius.vertical(top: Radius.circular(22))),
              context: context,
              builder: (context) => const ShowNoteBottomSheet());
        },
        child: const Icon(Icons.add),
      ),
      body: const NotesViewBody(),
    );
  }
}
