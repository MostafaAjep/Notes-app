import 'package:flutter/material.dart';
import 'custom_button.dart';
import 'custom_text_field.dart';

class ShowNoteBottomSheet extends StatelessWidget {
  const ShowNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 30),
      child: Column(
        children: [
          CustomTextField(hint: 'Title'),
          SizedBox(height: 16),
          CustomTextField(hint: 'Content', maxLines: 5),
          Spacer(),
          CustomButton(),
        ],
      ),
    );
  }
}
