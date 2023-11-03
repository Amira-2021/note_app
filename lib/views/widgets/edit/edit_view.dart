import 'package:flutter/material.dart';
import 'package:notes_app/models/note_model.dart';
import 'edit_view_body.dart';

class EditView extends StatelessWidget {
  const EditView({
    super.key,
    required this.model,
  });
  final NoteModel model;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: EditViewBody(
        noteModel: model,
      ),
    );
  }
}
