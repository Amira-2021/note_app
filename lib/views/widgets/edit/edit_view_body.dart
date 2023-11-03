import 'package:flutter/material.dart';
import 'package:notes_app/models/note_model.dart';
import '../note/custome_app_bar.dart';
import 'edit_modal_widget.dart';

class EditViewBody extends StatelessWidget {
  const EditViewBody({
    super.key,
    required this.noteModel,
  });
  final NoteModel noteModel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          const SizedBox(
            height: 50,
          ),
          const CustomAppBar(
            title: "Edit Note",
            iconData: Icons.edit,
          ),
          Expanded(
            child: EditModalWidget(
              model: noteModel,
            ),
          ),
        ],
      ),
    );
  }
}
