import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/widgets/notes_view_body.dart';
import '../cubits/notes_cubit/notes_cubit.dart';
import '../widgets/Add_note_Bottom_sheet.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NotesCubit(),
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            showModalBottomSheet(
                isScrollControlled: true,
                useSafeArea: true,
                //if you want to change the shape change it here
                // shape: const RoundedRectangleBorder(
                //   borderRadius: BorderRadius.vertical(top: Radius.circular(22))),
                context: context,
                builder: (context) => const ShowNoteBottomSheet());
          },
          child: const Icon(Icons.add),
        ),
        body: const NotesViewBody(),
      ),
    );
  }
}
