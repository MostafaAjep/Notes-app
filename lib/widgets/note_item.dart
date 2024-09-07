import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:notes_app/views/edit_note_view.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return const EditNoteView();
        }));
      },
      child: Padding(
        padding: const EdgeInsets.only(bottom: 6),
        child: Container(
          padding: const EdgeInsets.only(left: 12, top: 12, bottom: 12),
          decoration: BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.circular(16),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              ListTile(
                title: const Text(
                  'Flutter tips',
                  style: TextStyle(color: Colors.black, fontSize: 26),
                ),
                subtitle: Padding(
                  padding: const EdgeInsets.only(top: 16),
                  child: Text(
                    'Build your career with thrwat samy',
                    style: TextStyle(
                        color: Colors.black.withOpacity(0.4), fontSize: 20),
                  ),
                ),
                trailing: IconButton(
                  onPressed: () {},
                  icon: const Icon(FontAwesomeIcons.trash, size: 22),
                  color: Colors.black,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 16),
                child: Text(
                  'May21, 2022',
                  style: TextStyle(
                      color: Colors.black.withOpacity(0.4), fontSize: 16),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
