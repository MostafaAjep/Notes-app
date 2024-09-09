import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import '../cubits/add_note_cubit/add_note_cubit.dart';
import '../models/note_model.dart';
import 'colors_list_view.dart';
import 'custom_button.dart';
import 'custom_text_field.dart';

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({
    super.key,
  });

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  final GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  //any var should be in stateful widget if its changes so we do not but final before it
  //in stateless widget we but final.
  String? title, subtitle;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: autovalidateMode,
      child: SingleChildScrollView(
        child: Column(
          children: [
            CustomTextField(
                hint: 'Title',
                onSaved: (value) {
                  title = value;
                }),
            const SizedBox(height: 16),
            CustomTextField(
                hint: 'Content',
                maxLines: 5,
                onSaved: (value) {
                  subtitle = value;
                }),
            const SizedBox(height: 40),
            const ColorsListView(
              isActive: true,
            ),
            BlocBuilder<AddNoteCubit, AddNoteState>(
              builder: (context, state) {
                return CustomButton(
                  isLoading: state is AddNoteLoading ? true : false,
                  onTap: () {
                    validateAndFormat(context);
                  },
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  void validateAndFormat(BuildContext context) {
    if (formKey.currentState!.validate()) {
      formKey.currentState!.save();
      var currentDate = DateTime.now();
      var formattedDate = DateFormat('dd/MM/yyyy').format(currentDate);
      var noteModel = NoteModel(
        title: title!,
        subtitle: subtitle!,
        date: formattedDate,
        //alternative way of formatting date using intl package
        // "${DateTime.now().day}/${DateTime.now().month}/${DateTime.now().year}",
        color: Colors.black.value,
      );
      BlocProvider.of<AddNoteCubit>(context).addNote(noteModel);
      // Navigator.pop(context, {'title': title, 'subtitle': subtitle});
    } else {
      setState(() {
        autovalidateMode = AutovalidateMode.always;
      });
    }
  }
}
