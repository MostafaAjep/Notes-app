import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:notes_app/models/note_model.dart';

import '../../constants.dart';

part 'add_note_state.dart';

class AddNoteCubit extends Cubit<AddNoteState> {
  AddNoteCubit() : super(AddNoteInitial());
  //we do that when we trying to keep the stateless widget
  //so we can use it in the bloc listener by calling it
  // bool isLoading = false;
  addNote(NoteModel note) async {
    // isLoading = true;
    emit(AddNoteLoading());
    try {
      // isLoading = false;
      var noteBox = Hive.box<NoteModel>(kNotesBox);
      await noteBox.add(note);
      emit(AddNoteSuccess());
    } catch (e) {
      // isLoading = false;
      emit(AddNoteFailure(errorMessage: e.toString()));
    }
  }
}
